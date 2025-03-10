class InternalServerError extends Error {
  constructor({ cause, statusCode }) {
    super("Um erro interno não esperado aconteceu.", { cause: cause });
    super.name = "InternalServerError";
    this.action = "Entre em contato com o suporte.";
    this.statusCode = statusCode || 500;
  }

  toJSON() {
    return {
      name: this.name,
      message: this.message,
      action: this.action,
      status_code: this.statusCode,
    };
  }
}

class ServiceError extends Error {
  constructor({ cause, message }) {
    super(message || "Serviço indisponível no momento", {
      cause: cause,
    });
    super.name = "ServiceError";
    this.action = "Verifique se o serviço está disponível.";
    this.statusCode = 503;
  }

  toJSON() {
    return {
      name: this.name,
      message: this.message,
      action: this.action,
      status_code: this.statusCode,
    };
  }
}

class MethodNotAllowedError extends Error {
  constructor() {
    super("Método não permitido para este endpoint");
    super.name = "MethodNotAllowedError";
    this.action =
      "verifique se o método http enviado é valido para este endpoint.";
    this.statusCode = 405;
  }

  toJSON() {
    return {
      name: this.name,
      message: this.message,
      action: this.action,
      status_code: this.statusCode,
    };
  }
}

module.exports = {
  InternalServerError,
  ServiceError,
  MethodNotAllowedError,
};
