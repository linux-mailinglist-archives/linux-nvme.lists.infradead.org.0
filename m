Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A42FD809DD
	for <lists+linux-nvme@lfdr.de>; Sun,  4 Aug 2019 09:52:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=SVproJxtAyMr8LhZMZTqAZd1U5D8y0tXcR8Ef6z2iDM=; b=mbjHrWsnQec+Hmpi8i7RSUvVp9
	K/z+85Ar4xqC1z3bJRUXwyLyyJex28FtWWlje9fOymRY3YWUUeE6VZlZ9ot1VT58+8zMj9ycpaKg+
	wj9powwPy1p8FO4AS3AISO0+jqdcDwIshf+yb/uJReW/DOBQsRDey/3Q4P05XAdxF7YciYurzEB05
	I2l1VVE0OxmOV0gMi/Q/t+1VbqW89Xs9v3MLHHhWuVeGEWjQNJaBk3310bqnwmTFdxQMWND4oN1E6
	iWgRZ6gJz/dqV2pQe1kIUtp3YmSYcuHXax18C7NVe5DNyNTzYIOe1qykuALv9027Cgv93R++beDgk
	u11QWRyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huBJH-0002vf-31; Sun, 04 Aug 2019 07:52:07 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huBIL-0002J3-6d
 for linux-nvme@lists.infradead.org; Sun, 04 Aug 2019 07:51:10 +0000
Received: by mail-pg1-x544.google.com with SMTP id w10so38125087pgj.7
 for <linux-nvme@lists.infradead.org>; Sun, 04 Aug 2019 00:51:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=b270Z5VoEXh143IOoA65JGI3MM6BrZhoqlGvp1EnZv8=;
 b=Y4hXwJQc++LUWfK/kLeH3ywufqKdw+aSeHAwHGc6KIN+Pm8rtpZtCIWouPVaydrRdW
 wWgj3+8D4iWrsU8P/o1yek5Kyua2ELrrbCgL0K92lpTejqs0xGIJqyuX8Okou1hnt94k
 6FGt7izHVrWfqe0C0SR8iFlE785eWyIyvg0PXbG0hs888FnXPKewnFYBReCPXcm60yV+
 O0h/UVBkMrR4dWatBC/sGuhfMyDfIsES1Zh0U/TTePGITqJYxH6aKDgbIAe4J/KYFx7d
 My1V57u1eaW40J/XlKSKd6duJDe48UXVQHCOtqZxuV/29O4mGYtKLIIX8fq3qc3UlhWM
 9o9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=b270Z5VoEXh143IOoA65JGI3MM6BrZhoqlGvp1EnZv8=;
 b=YhBdXjdShO0/ifuVc5PMB4O1eeXphalHV9xyIyo8THC0dfUzTYiPtcHatQTc+ua3Pn
 tD6j8OFo06ibw517EwHI22wL3Aa+SZFwAMSq3RVbEnugLVWkGrylE6st1fOHALQDRYzH
 8eVvYHqmJdosBAsxaffMqdxh0Me5gnC12GmD6sg4XUFqU2BZuX+j5Qr8zcgMWEbNcvbt
 GrbuIasW03teMsqBIDBQ4vAHj7JIBjkasm+lsB/QQd48aMwWD2nWc+W0cmsLG6kNEzCB
 DrgBnw3VLzyNBOEJ1pCqxf8kLoWAm/OUtAWHKFaAv7F3bbSFiKFyETmyuLEGPW9XO1cy
 jgNg==
X-Gm-Message-State: APjAAAWYiJnXcReQ6BxIz6Gjj5L8aUsXvpJvmY1QDtbuBLIS8pdPovmT
 qkGkFS+ksDdrCwSZNG/qWu5oya7nPmg=
X-Google-Smtp-Source: APXvYqzNQctlARSpKaY9T4eQwB3GIflLVzKEZv2OUnkAAe5oFEDhYHzw/sGC3Mw8ky31UNfDhHi0jg==
X-Received: by 2002:a17:90a:9a83:: with SMTP id
 e3mr12258057pjp.105.1564905068252; 
 Sun, 04 Aug 2019 00:51:08 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id i126sm94091652pfb.32.2019.08.04.00.51.05
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 04 Aug 2019 00:51:07 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 4/4] nvmet: trace: parse Get LBA Status command in detail
Date: Sun,  4 Aug 2019 16:50:50 +0900
Message-Id: <20190804075050.14642-5-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190804075050.14642-1-minwoo.im.dev@gmail.com>
References: <20190804075050.14642-1-minwoo.im.dev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_005109_467416_3E91E1D6 
X-CRM114-Status: GOOD (  10.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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
it would be great if we can see in detail when tracing in target side
also.

Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
---
 drivers/nvme/target/trace.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/drivers/nvme/target/trace.c b/drivers/nvme/target/trace.c
index 6af11d493271..1373a3c67962 100644
--- a/drivers/nvme/target/trace.c
+++ b/drivers/nvme/target/trace.c
@@ -33,6 +33,22 @@ static const char *nvmet_trace_admin_get_features(struct trace_seq *p,
 	return ret;
 }
 
+static const char *nvmet_trace_get_lba_status(struct trace_seq *p,
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
 static const char *nvmet_trace_read_write(struct trace_seq *p, u8 *cdw10)
 {
 	const char *ret = trace_seq_buffer_ptr(p);
@@ -80,6 +96,8 @@ const char *nvmet_trace_parse_admin_cmd(struct trace_seq *p,
 		return nvmet_trace_admin_identify(p, cdw10);
 	case nvme_admin_get_features:
 		return nvmet_trace_admin_get_features(p, cdw10);
+	case nvme_admin_get_lba_status:
+		return nvmet_trace_get_lba_status(p, cdw10);
 	default:
 		return nvmet_trace_common(p, cdw10);
 	}
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
