Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6051420DD8
	for <lists+linux-nvme@lfdr.de>; Thu, 16 May 2019 19:24:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wJsONpdZFjzYSOb1up/ptX/JEWLcpcUFE5mnpr8c8VM=; b=gTk2VVusz/21Qf
	4StVAC2dO4Qv6EN2LEffRpqzsof+nr8fWT6xVsgoS2U3PPEv9tloh2MNZiR0OHGUIMdpajx5fQXYA
	A2+CVTZBPqJn7Qtqn+E3G2F8GM0J8mCQFSPI1zCFfgtD12kgTPnLO86vYOpSSKUU9AKOBvNoAhuHu
	zUUmr3fyg7xVUPe5CdYJXWxbXf5cIGU+uoNehwf25GEHTFIEkMBWAMz6WfVitFxi50CmB4TiV/4D1
	6Evy2G74vMq09DCBYJpScYciSFa2CCgBWxhawBBDEEtqP6lHswQ2+C4fyv7U3NWoPr9Qe4Efka4lv
	5tdhCeewbGIam6H+JJIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRK7F-0000Wu-UC; Thu, 16 May 2019 17:24:25 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRK72-0000ME-43
 for linux-nvme@lists.infradead.org; Thu, 16 May 2019 17:24:13 +0000
Received: by mail-pf1-x442.google.com with SMTP id c6so2179488pfa.10
 for <linux-nvme@lists.infradead.org>; Thu, 16 May 2019 10:24:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jG3wgZYwQYAF8hjd3eslLmsiqRpue2BnElhsRQItZaQ=;
 b=LGO71PIFoPEj+YW8u15ISLjZ4H078DZj99GE8PR5CmPCWAoC5ic+JrH9ZlZGGXdzCX
 LzOPX+4YoRmfcb8mGCwrEAkd+zagV9O+7Pew/dpVqrFkMv3SbW48O0OnTl5/uJgyKk3j
 v++KiEsrh4IydZKb2N65SvsV+W77J+boYDYtiKgxIDb9IdFLwjUVAC5hsXUGHnN4IE7z
 atjBF3a5ktA8h/kYOcPSMDb2XZFsaTZG2mdPW9GEVk8vJKQpa1G2FiHf3dCiL1Bwlpql
 KnZKqf7Bh3s9dB/uyZuxwFFRm4v1lXkZwQVIdt6LIO59vZ+XWz/pqmzsYWBupioFrhws
 Rqhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jG3wgZYwQYAF8hjd3eslLmsiqRpue2BnElhsRQItZaQ=;
 b=gFCcm0EXHuU8xHepSLyhY5u2XBvfvDi75rjzDXtWIFu4Tiy0oDDEWBeKujX0WdDgtF
 cLBRopSJEg+LlqcvjpMZAnHbh2Ji81ACX4Y6ZVcqI/bGQKdAz+OzpexHAMR3RxV7HhfN
 vhAuUpeMKTh363nIXg0L07Z7lJyCMXAUZ3jlzKID2G0ZiAlgrV92EncjBsh0wrTKKG+n
 DvMY2YYiNzKITiWXAy2k84rTqk6IfnQq+QNnltpQpi8HtorWIg5kmY+qerLSJGHw6XIX
 MB12rDp7ZguNr/HKK5i1en1jfojj1KCE+CXTlAHLtdOEXms7IH+A6DdYjsAGw42q1HIr
 Uj9Q==
X-Gm-Message-State: APjAAAX4bai43xjBsS8hVg5qTYnMlF2zAYP5XwyRiKlJvioCpCKYOqvv
 jm6TZ18F8ptejsltdV39qOajMgIar8k=
X-Google-Smtp-Source: APXvYqwM8fSbIG1cQEuk2f00QSL5OdYUjRNqt7a6k1LDtyZxiMxfQ/tYDpgjmQEuzcqIj/uk1F6zyA==
X-Received: by 2002:aa7:96ec:: with SMTP id i12mr42354549pfq.82.1558027450985; 
 Thu, 16 May 2019 10:24:10 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id h13sm7321721pfo.98.2019.05.16.10.24.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 May 2019 10:24:10 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 2/2] nvme-cli: remove unnecessary initialize of local var
Date: Fri, 17 May 2019 02:23:50 +0900
Message-Id: <20190516172350.11864-3-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190516172350.11864-1-minwoo.im.dev@gmail.com>
References: <20190516172350.11864-1-minwoo.im.dev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_102412_212690_95FB191B 
X-CRM114-Status: GOOD (  13.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Keith Busch <keith.busch@intel.com>, Minwoo Im <minwoo.im.dev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This patch does not have any functional changes here.  Just clean-up the
unnecessary initialize.

Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
---
 fabrics.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fabrics.c b/fabrics.c
index 733a24b..573a6ef 100644
--- a/fabrics.c
+++ b/fabrics.c
@@ -1180,7 +1180,7 @@ int disconnect(const char *desc, int argc, char **argv)
 int disconnect_all(const char *desc, int argc, char **argv)
 {
 	struct subsys_list_item *slist;
-	int i, j, ret = 0, subcnt = 0;
+	int i, j, ret, subcnt = 0;
 	const struct argconfig_commandline_options command_line_options[] = {
 		{NULL},
 	};
-- 
2.21.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
