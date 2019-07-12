Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE856662EE
	for <lists+linux-nvme@lfdr.de>; Fri, 12 Jul 2019 02:34:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gbbJdJYIS4w9CjuI2uXd2NPNVM1LCNKlWXPGwPXpqHk=; b=LFqkhPUNWFmJ6/JK+d2bA6KIYR
	NidnhBraZ+RWNx0e5xKO//n/a0+2rj3/QGFUHDxT3hKCYM7mB4eGnAIwCv/ehYpDvVQibuZrxQpOv
	kAe9xdhBA0BtXBgHP94mJuoqT9iFgvwfEWUJcQoadi6Sps8vJYY8EkHWwRcKAfEu9m7LkH4Q7F0mg
	EJW2fa+fq774I62no1Uf1eHMAr3gAI2MVpN397oTUf8yEUBVSTLGp2YX0+S73atajh3LUHvS5oVVz
	6HnHIJh9Jmkq142xJUlUj+z9QJSKO7APininCBp+ObQHT+gjDfW0jUtqOnnfg29fSZcblssSDM/ms
	jAPK2sJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hljWA-0003HR-7B; Fri, 12 Jul 2019 00:34:31 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hljTi-0001Yp-Uz
 for linux-nvme@lists.infradead.org; Fri, 12 Jul 2019 00:32:00 +0000
Received: by mail-pg1-x541.google.com with SMTP id q4so3702273pgj.8
 for <linux-nvme@lists.infradead.org>; Thu, 11 Jul 2019 17:31:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Od7dv2IxRLmU6VdZSP/JVKdQZhejlTiFEc4ShJW5xlI=;
 b=lh90LOJxvnoGi6gjB9aWckMm+5mHE8YXRFn9hhzJMeHCJU+HbXYUNyYFsXjJ+HkkHD
 DIRitmCm+fZtxC6M2kvlDeA2S65WCaX/Y2goMnbCKUerZ5YvF/eZJJ/zpIUBRkg9zAqj
 EyBJgEQSUVKbKOV66lEDsE29kWOybD2Kt6Ambs+43u2qDSRelWeGkBYvELXb01JDOO37
 rG0r73aGGZXxsF6ba741QbROYP4DJx72LyAv1LIezEvGpqHu/oFO60zO6MtzN6IxIFOb
 DPXMdNSKVUFN5O+1fQy3Uf5jcm8kueFzu/b4XoRB2WehO3IBkL0ZChhjBOLgqV8VBmlL
 Sw0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Od7dv2IxRLmU6VdZSP/JVKdQZhejlTiFEc4ShJW5xlI=;
 b=jiJe0DgOO1mTyb0h64Aum4a/7AuiSlyIsfjiAAB9SGglT3LhUpeAeO0Ggki2JuYyPF
 Uu0ZQYJJr+WF8UOpxHHPurFdKaGRXgfna6BZ74dML/rFFJPsxrK+BiFFWwLlFyVFXdsm
 6/bYyloreAc2op4X4CYuYQz3FE7/WOyabZknQVrl3XDefG8ZTUJuyIvMGbyHjoL9R2cA
 58mKlSCqVXcOzafP6Td7ei/U8WFHmLTmSQPU+xwbTYPC4CZDm9w5JtAMGd4yehykMuCt
 NhuVL874AtGbv9clhMlPL5CS9ir6IcOnIcl1m+nNflXBhWENBnc4lD9HJI5vLJ1Jr0C+
 gb+w==
X-Gm-Message-State: APjAAAVOMZ3dsiBSjOp8+9dHVQQL3zkeTEEHIdKEk+QyL8OfKpnhrhWk
 vAJglvYQBZRxS4+tovw5QoFk2dat
X-Google-Smtp-Source: APXvYqx80N3g8PU+AogO/8FPWWnPPOT7/0FSE9TOxmiOXZ9Kqlw0JSYDGqMQnjSY96UVsf43NYG0Fw==
X-Received: by 2002:a63:124a:: with SMTP id 10mr7327553pgs.254.1562891518136; 
 Thu, 11 Jul 2019 17:31:58 -0700 (PDT)
Received: from pallmd1.broadcom.com ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id u69sm11480522pgu.77.2019.07.11.17.31.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 11 Jul 2019 17:31:57 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH rfc v2 06/10] nvme-cli: Add routine to compare ctrl_list_item
 to connect args
Date: Thu, 11 Jul 2019 17:31:36 -0700
Message-Id: <20190712003140.16221-7-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20190712003140.16221-1-jsmart2021@gmail.com>
References: <20190712003140.16221-1-jsmart2021@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_173159_149192_AFAE4FA4 
X-CRM114-Status: GOOD (  14.24  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jsmart2021[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jsmart2021[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Hannes Reinecke <hare@suse.com>, James Smart <jsmart2021@gmail.com>,
 Sagi Grimberg <sagi@grimberg.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

In preparation for searching controllers to match with connect args:

Create a new routine that receives a structure containing connect
arguments and a device name. The routine will build and fill in a
ctrl_list_item for the device and compare its attributes with the
connect arguments. The routine returns true/false on whether they
match.

Routine is defined as a global as a subsequent patch will use it
from the fabrics routines.

Signed-off-by: James Smart <jsmart2021@gmail.com>
CC: Sagi Grimberg <sagi@grimberg.me>
CC: Hannes Reinecke <hare@suse.com>
---
 nvme.c | 40 ++++++++++++++++++++++++++++++++++++++++
 nvme.h |  9 +++++++++
 2 files changed, 49 insertions(+)

diff --git a/nvme.c b/nvme.c
index 66ba2fc..ef3c61c 100644
--- a/nvme.c
+++ b/nvme.c
@@ -2010,6 +2010,46 @@ static int list(int argc, char **argv, struct command *cmd, struct plugin *plugi
 	return nvme_status_to_errno(ret, false);
 }
 
+static char *nvme_ctrl_dir = "/sys/class/nvme/";
+
+/*
+ * Given a controller name, create a ctrl_list_item with its
+ * attributes and compare the attributes against the connect args
+ * given.
+ * Return true/false based on whether it matches
+ */
+bool ctrl_matches_connectargs(char *name, struct connect_args *args)
+{
+	struct ctrl_list_item *ctrl;
+	bool found = false;
+
+	ctrl = malloc(sizeof(*ctrl));
+	if (!ctrl) {
+		fprintf(stderr, "Failed to allocate controller list element\n");
+		return false;
+	}
+	memset(ctrl, 0, sizeof(*ctrl));
+
+	if (get_nvme_ctrl_info(name, nvme_ctrl_dir, ctrl, NVME_NSID_ALL))
+		goto cleanup_exit;
+
+	if (!strcmp(ctrl->subsysnqn, args->subsysnqn) &&
+	    !strcmp(ctrl->transport, args->transport) &&
+	    (!strcmp(ctrl->traddr, args->traddr) ||
+	     !strcmp(args->traddr, "none")) &&
+	    (!strcmp(ctrl->trsvcid, args->trsvcid) ||
+	     !strcmp(args->trsvcid, "none")) &&
+	    (!strcmp(ctrl->host_traddr, args->host_traddr) ||
+	     !strcmp(args->host_traddr, "none")))
+		found = true;
+
+cleanup_exit:
+	free_ctrl_list_item(ctrl);
+	free(ctrl);
+
+	return found;
+}
+
 int __id_ctrl(int argc, char **argv, struct command *cmd, struct plugin *plugin, void (*vs)(__u8 *vs, struct json_object *root))
 {
 	const char *desc = "Send an Identify Controller command to "\
diff --git a/nvme.h b/nvme.h
index 470f702..537b8dd 100644
--- a/nvme.h
+++ b/nvme.h
@@ -179,6 +179,15 @@ enum {
 	BINARY,
 };
 
+struct connect_args {
+	char *subsysnqn;
+	char *transport;
+	char *traddr;
+	char *trsvcid;
+	char *host_traddr;
+};
+
+bool ctrl_matches_connectargs(char *name, struct connect_args *args);
 char *__parse_connect_arg(char *conargs, const char delim, const char *fieldnm);
 
 extern const char *conarg_traddr;
-- 
2.13.7


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
