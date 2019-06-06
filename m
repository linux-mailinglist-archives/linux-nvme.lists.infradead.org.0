Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2427836C51
	for <lists+linux-nvme@lfdr.de>; Thu,  6 Jun 2019 08:32:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OmlTLuXp8ujwMM00LJNVY7+J1ONon2WEmQMvQ6B3hsM=; b=HkS82ag5fp8xyi
	Acp5zy4htO/N8jFOBVxuOQCmYwYro7Yp5sZZHynoLKMJ+nvm6V2nUxzadgb0dDkYKVX7Q+9EfzfMo
	EHap/yv7IlT1fzI0Cz4GWhIS61Fk8kwS212umeNmm+nfmLd5q2ghvc9SgZtRgZsy6jKsQN7wCO8G8
	0iSGr8+SZLgQQuR5i/VnWV4SxWUdTReQlOaKAvf+zPa/6JVil2DpcwpBuq0Xhh1qNuEX0JBdIOyeo
	p60qvUsAoDmqDpbxDpPbbsZhQwT3hy/94QrPlsy/aKdJ/GhKNrQzxJ4qtyDF/MrUczIZnMrCAEiq1
	KMyUrB9sKOdhaQbpO5dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYlxD-0002Ak-05; Thu, 06 Jun 2019 06:32:51 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYlx7-0002AP-Sv
 for linux-nvme@lists.infradead.org; Thu, 06 Jun 2019 06:32:47 +0000
Received: by mail-pl1-x644.google.com with SMTP id f97so510782plb.5
 for <linux-nvme@lists.infradead.org>; Wed, 05 Jun 2019 23:32:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=UO3g7Gip8LY3OcnQC4tYt8hmxJKAzUJzQ1GKecsMuAQ=;
 b=BYs11jEcPEi91SNh+NhcSdCvPNph162DVg7X07bRmF8R1C5nN3cyGzwdpqHpL4Mm/m
 2tm8veShxwb7UZI70gps0yQCUd+T1c37JTUoNa8nKRwqVVQfafoDNTgA+OVWUtwBFSY8
 aWX8megb0TUzwG7a2XSSFVsNjILRfv0lpQ3QOaMlLQlY2sF2rAR+zf7yUc2fjp6mogJG
 ij2Cqx1Wu/oovEhJBYho1u5rYs1c71y5QZQV2Wb4MNuAbkh7qavhPBLtmqjI1ARhQ+T7
 8U/8Gvqhn33TTwfj1+B2r6YWh5rL0YiRSt+mi/SvNjpVikCymDNUvS+mShtRCyDLKpi3
 r0Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=UO3g7Gip8LY3OcnQC4tYt8hmxJKAzUJzQ1GKecsMuAQ=;
 b=I0HEF2o1evbS7uMK/+xm2U4zYZHnxHR9+kQ0b+WFqZyzEi+1ghVedm7w6JgPTcFh7+
 y0yZ2Xnc/ZCAoKa1xrSXmtap4bePVjJ/WsJa/2snUt9ovd8wwHQ1KYmDQLhsoZlSzRgH
 U8VR/RZc4aGjJjfV1Va9xfE6WV8jKFcyBxmjfTcfrr9wWYxe+1GYS6zCwE9MjcBzUMBu
 sNG6FGQGWdN2jOAZ0SyfcAfZcT6SiQy5BrVbV2j62K9x/voh4rFqtatrmiDA6p9WExeX
 zFIpqeoWJv8g3an1K8hLpz3OyfQTNRu7ZAWXOowzn1V4XbaLDO4pVsIAHf2PElONkjqb
 UQtg==
X-Gm-Message-State: APjAAAXzSOnsQPZ4nXZleZTLW8TCtWXEPC8ha+3NpbWNMqPKaeV7APwP
 +e8+75syCGqq9lExRhXBBzR4k99kh0Q=
X-Google-Smtp-Source: APXvYqxC6kSSUv5WU/CFoTdjGjfecRfzt3uJdaMn254lC64gDxfEFZUlLyeYzPQDeoKQ9EVWaNWO1w==
X-Received: by 2002:a17:902:9a9:: with SMTP id
 38mr50291617pln.10.1559802763721; 
 Wed, 05 Jun 2019 23:32:43 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id r64sm1202562pfr.58.2019.06.05.23.32.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 05 Jun 2019 23:32:42 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [RFC PATCH V6 0/3] nvme-trace: Add support for fabrics command
Date: Thu,  6 Jun 2019 15:32:26 +0900
Message-Id: <20190606063229.17258-1-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_233245_936791_49231CD2 
X-CRM114-Status: GOOD (  14.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Keith Busch <kbusch@kernel.org>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi,

This is 6th series to introduce target-side tracing.  This series
continas codes duplicated with host-side tracing, but it can make us
avoid some disadvantages Christoph pointed out.

The target-side takes struct nvmet_req *req, so that those two entries
have a little bit different from host-side tracing entries.

The following logs are examples of this patch series when trying to
connect the loop targeted device:
            nvme-2401  [006] ....  1474.570779: nvmet_req_init: nvme0: qid=0, cmdid=0, nsid=1, flags=0x40, meta=0x0, cmd=(nvme_fabrics_type_connect recfmt=0, qid=0, sqsize=31, cattr=0, kato=15000)
     kworker/6:2-1067  [006] ....  1474.570933: nvmet_req_complete: nvme1: qid=0, cmdid=0, res=0x1, status=0x0
            nvme-2401  [004] ....  1474.571216: nvmet_req_init: nvme1: qid=0, cmdid=6, nsid=4, flags=0x40, meta=0x0, cmd=(nvme_fabrics_type_property_get attrib=1, ofst=0x0)
     kworker/4:2-1235  [004] ....  1474.571336: nvmet_req_complete: nvme1: qid=0, cmdid=6, res=0x200f0003ff, status=0x0
            nvme-2401  [006] ....  1474.571440: nvmet_req_init: nvme1: qid=0, cmdid=22, nsid=0, flags=0x40, meta=0x0, cmd=(nvme_fabrics_type_property_set attrib=0, ofst=0x14, value=0x460001)
     kworker/6:2-1067  [006] ....  1474.571494: nvmet_req_complete: nvme1: qid=0, cmdid=22, res=0x0, status=0x0
            nvme-2401  [004] ....  1474.571668: nvmet_req_init: nvme1: qid=0, cmdid=7, nsid=4, flags=0x40, meta=0x0, cmd=(nvme_fabrics_type_property_get attrib=0, ofst=0x1c)
     kworker/4:2-1235  [004] ....  1474.571767: nvmet_req_complete: nvme1: qid=0, cmdid=7, res=0x1, status=0x0
            nvme-2401  [006] ....  1474.572078: nvmet_req_init: nvme1: qid=0, cmdid=23, nsid=4, flags=0x40, meta=0x0, cmd=(nvme_fabrics_type_property_get attrib=0, ofst=0x8)
     kworker/6:2-1067  [006] ....  1474.572098: nvmet_req_complete: nvme1: qid=0, cmdid=23, res=0x10300, status=0x0
            nvme-2401  [004] ....  1474.572268: nvmet_req_init: nvme1: qid=0, cmdid=8, nsid=4, flags=0x40, meta=0x0, cmd=(nvme_fabrics_type_property_get attrib=1, ofst=0x0)
     kworker/4:2-1235  [004] ....  1474.572287: nvmet_req_complete: nvme1: qid=0, cmdid=8, res=0x200f0003ff, status=0x0
            nvme-2401  [006] ....  1474.572436: nvmet_req_init: nvme1: qid=0, cmdid=24, nsid=0, flags=0x40, meta=0x0, cmd=(nvme_admin_identify cns=1, ctrlid=0)
     kworker/6:2-1067  [006] ....  1474.572462: nvmet_req_complete: nvme1: qid=0, cmdid=24, res=0x0, status=0x0
            nvme-2401  [004] ....  1474.572643: nvmet_req_init: nvme1: qid=0, cmdid=9, nsid=4294967295, flags=0x40, meta=0x0, cmd=(nvme_admin_get_log_page cdw10=05 00 ff 03 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00)
     kworker/4:2-1235  [004] ....  1474.572664: nvmet_req_complete: nvme1: qid=0, cmdid=9, res=0x0, status=0x0
            nvme-2401  [006] ....  1474.573001: nvmet_req_init: nvme1: qid=0, cmdid=25, nsid=4294967295, flags=0x40, meta=0x0, cmd=(nvme_admin_get_log_page cdw10=0c 01 03 08 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00)
     kworker/6:2-1067  [006] ....  1474.573028: nvmet_req_complete: nvme1: qid=0, cmdid=25, res=0x0, status=0x0
            nvme-2401  [004] ....  1474.573158: nvmet_req_init: nvme1: qid=0, cmdid=6, nsid=0, flags=0x40, meta=0x0, cmd=(nvme_admin_set_features cdw10=07 00 00 00 07 00 07 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00)
     kworker/4:2-1235  [004] ....  1474.573179: nvmet_req_complete: nvme1: qid=0, cmdid=6, res=0x20007f007f, status=0x0
    kworker/0:1H-1057  [000] ....  1474.574905: nvmet_req_init: nvme0: qid=0, cmdid=0, nsid=1, flags=0x40, meta=0x0, cmd=(nvme_fabrics_type_connect recfmt=0, qid=1, sqsize=127, cattr=0, kato=0)
     kworker/0:2-2118  [000] ....  1474.575025: nvmet_req_complete: nvme1: qid=1, cmdid=0, res=0x0, status=0x0
    kworker/1:1H-1867  [001] ....  1474.575236: nvmet_req_init: nvme0: qid=0, cmdid=0, nsid=1, flags=0x40, meta=0x0, cmd=(nvme_fabrics_type_connect recfmt=0, qid=2, sqsize=127, cattr=0, kato=0)
     kworker/1:1-63    [001] ....  1474.575358: nvmet_req_complete: nvme1: qid=2, cmdid=0, res=0x0, status=0x0

Please review.
Thanks,

Changes to V5:
  - Provide trace code to the target-side instead of a common code
    shared between host and target to avoid disadvantages something bad
    for the performance like cache miss.  It has been suggested by
    Christoph.
  - Removed the third patch out of this series because that has nothing
    to do with this series.
  - Merged the last two commits into a single commit for the review.

Changes to V4:
  - Add Reviewed-by: tag from Sagi. (Thanks to Sagi)
  - Consider endianness for cqe->status when assigning the value in
    trace
  - Add more descriptions about the variable arguments in events.

Changes to V3:
  - Remove additional argument from the caller level.

Changes to V2:
  - Provide a common code for both host and target. (Chaitanya)
  - Add support for tracing requests in target-side (Chaitanya)
  - Make it simple in trace.h without branch out from nvme core module
    (Christoph)

Changes to V1:
  - fabrics commands should also be decoded, not just showing that it's
    a fabrics command. (Christoph)
  - do not make it within nvme admin commands (Chaitanya)

Minwoo Im (3):
  nvmet: introduce nvmet_req_to_ctrl to get ctrl instance
  nvme: trace: do not EXPORT_SYMBOL for a trace function
  nvmet: introduce target-side trace

 drivers/nvme/host/trace.c    |   1 -
 drivers/nvme/target/Makefile |   3 +
 drivers/nvme/target/core.c   |   8 ++
 drivers/nvme/target/nvmet.h  |   9 ++
 drivers/nvme/target/trace.c  | 179 ++++++++++++++++++++++++++++++++++
 drivers/nvme/target/trace.h  | 184 +++++++++++++++++++++++++++++++++++
 6 files changed, 383 insertions(+), 1 deletion(-)
 create mode 100644 drivers/nvme/target/trace.c
 create mode 100644 drivers/nvme/target/trace.h

-- 
2.21.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
