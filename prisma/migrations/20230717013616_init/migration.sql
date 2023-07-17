-- CreateTable
CREATE TABLE "Todos" (
    "id" SERIAL NOT NULL,
    "title" TEXT NOT NULL DEFAULT 'not title',
    "complete" BOOLEAN NOT NULL DEFAULT false,
    "created" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Todos_pkey" PRIMARY KEY ("id")
);
