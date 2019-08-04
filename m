Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3FD9809DC
	for <lists+linux-nvme@lfdr.de>; Sun,  4 Aug 2019 09:52:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=O5aIxMhv0qdgy29PoyBfaKSERz19hCJBCIUykS2FOng=; b=qIHbs9hs/NmJ2GyFBmtzt7bcLQ
	P+MLB0NYLCQabWGOwiBzfer0MLg+XIrFb+HkmbTrsffMIJZH/nQj16foU154fW1bFkOgDXhnosm7k
	1/WIN2a3kof6Q4lBmqIO1CwwPju4IvPrQqMEooRT54KIE9UyZXF+kWroM41jPTEqwZ0+/6WJvL0MW
	qnI+eH+KqJ3jDc2X6UBoje2eGZGKVLDPExtwkJkSAGhtD+Zo04l8Rqhs/XXrZS14RpRJfqIdmPAfn
	t7nNldn6HMYNKb5wbKwIfYr8ov9JU5vw2juTkWv5YNaMW/1TGM3JIkyMWXP23RJEbOoRIXGj92/15
	Dun2zWLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huBJ6-0002kF-1w; Sun, 04 Aug 2019 07:51:56 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huBII-0002HQ-9Y
 for linux-nvme@lists.infradead.org; Sun, 04 Aug 2019 07:51:08 +0000
Received: by mail-pl1-x644.google.com with SMTP id c2so35225469plz.13
 for <linux-nvme@lists.infradead.org>; Sun, 04 Aug 2019 00:51:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=qe8bWZI+mFZMm3Hn7SDNZhqpCWWmzI+jkOJzjlgVfF4=;
 b=pElDmd/BsAhdo5C5am4Lz2f6N/+XkgOfNaGhyV9dDM1AMkcKM72C6OX99mm6NGKdWn
 +NsvPYNz8XTXUkf7SHMKFJy2LpyN6Sliih73BRSbLyqmUMaNVTX1HTJqwvfEAg0OPTso
 DiGb2E4gCZg/uoaMulf91zluSKv2euqiVWWI+7HuzsdSroisUMQ6qC4uuaPomVAc3I0q
 ziiGKOA/4BN/qInYPAkzlePqGKizH7Q2+n/p/5mwbi5H5OkKQMUEJUR9w8CuvWsj0+iu
 +EAsAmGWmHm2V7CmTSyZobgqKXgay/lL8JW6Qo6CFf4Hqo68m6uZJj64xc0+ffHlbONq
 ae7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=qe8bWZI+mFZMm3Hn7SDNZhqpCWWmzI+jkOJzjlgVfF4=;
 b=mShdG5vWLqlbKoSCIT1NQA0vPd4eQNwkEOhw6Lpw5ME2Tawqy08vjFDv9EzXjO0yQC
 WWHASLHy/WSMCltktckufg9WX9vdMOlnYwdVIGdhKtt7sr+AMnJ16LgoQ0cxkZbEj2t9
 RhjjIBnJ+liHlmzWz+I94cHXO1QFLT0NCd+DHYte34FFtwas9Y3sCOwa+WfH9qWb80Qc
 5o23kQCxrVparGB4cE8+9rFVxxZiXHCbsJFz4Ot/oDT2Yw74c5C+1fi9ET0W9g/eOk5m
 ZbMNkRtbHZEAqga8WM/xXvvuRtRCQRRj9pEdrbhfGtmWDH5/PS951DSGJ7K8gwUb0s4r
 NRcw==
X-Gm-Message-State: APjAAAVbX2TfCfe/2hSyHQJffYip6UvF6F8mhtFktJDCuOqAMEEYq3/x
 bctxmzPmreiRV2TQ7PwmMj5EYtj6FGA=
X-Google-Smtp-Source: APXvYqwRpyvDaaX4HFMlJPxVvc467dKdiv0CV4u5HNnCZT+uELXahKb2CWjvNdL1/EuNSxtCF/FB/Q==
X-Received: by 2002:a17:902:424:: with SMTP id
 33mr59114265ple.151.1564905065523; 
 Sun, 04 Aug 2019 00:51:05 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id i126sm94091652pfb.32.2019.08.04.00.51.03
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 04 Aug 2019 00:51:04 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 3/4] nvme: trace: parse Get LBA Status command in detail
Date: Sun,  4 Aug 2019 16:50:49 +0900
Message-Id: <20190804075050.14642-4-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190804075050.14642-1-minwoo.im.dev@gmail.com>
References: <20190804075050.14642-1-minwoo.im.dev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_005106_896368_593E389C 
X-CRM114-Status: GOOD (  10.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@fb.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Christoph Hellwig <hch@lst.de>,
 Sagi Grimberg <sagi@grimberg.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Four different fields are in CDWs of Get LBA Status command which means
it would be great if we can see in detail when tracing.

Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
---
 drivers/nvme/host/trace.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/drivers/nvme/host/trace.c b/drivers/nvme/host/trace.c
index 9778eb0406b3..5c3cb6928f3c 100644
--- a/drivers/nvme/host/trace.c
+++ b/drivers/nvme/host/trace.c
@@ -86,6 +86,22 @@ static const char *nvme_trace_admin_get_features(struct trace_seq *p,
 	return ret;
 }
 
+static const char *nvme_trace_get_lba_status(struct trace_seq *p,
+					     u8 *cdw10)
+{
+	const char *ret = trace_seq_buffer_ptr(p);
+	u64 slba = get_unaligned_le64(cdw10);
+	u32 mndw = get_unaligned_le32(cdw10 + 8);
+	u16 rl = get_unaligned_le16(cdw10 + 12);
+	u8 atype = cdw10[15];
+
+	trace_seq_printf(p, "slba=0x%llx, mndw=0x%x, rl=0x%x, atype=%u",
+			slba, mndw, rl, atype);
+	trace_seq_putc(p, 0);
+
+	return ret;
+}
+
 static const char *nvme_trace_read_write(struct trace_seq *p, u8 *cdw10)
 {
 	const char *ret = trace_seq_buffer_ptr(p);
@@ -141,6 +157,8 @@ const char *nvme_trace_parse_admin_cmd(struct trace_seq *p,
 		return nvme_trace_admin_identify(p, cdw10);
 	case nvme_admin_get_features:
 		return nvme_trace_admin_get_features(p, cdw10);
+	case nvme_admin_get_lba_status:
+		return nvme_trace_get_lba_status(p, cdw10);
 	default:
 		return nvme_trace_common(p, cdw10);
 	}
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
