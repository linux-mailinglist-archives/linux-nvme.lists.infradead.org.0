Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CA53B53C3
	for <lists+linux-nvme@lfdr.de>; Tue, 17 Sep 2019 19:14:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EcWKDPWP/AB94cwEsGYekPZU4iWcDiqlTKEKt4sy94A=; b=sKx++uzzJrKZaz
	NDNXufKM5qT0azUhj5lMp2ObAG/ZUR9tJKc09K5Mhu9U+ydNZrcUeeeO7j/26/eR/nbCdK+yiTyuI
	yea/RHzGMo5jaHNq6k58TlPNc6YDLYMQS8/sb6bZUCXKdzH+etdOov+FS/KMqiyk1fi3W9CSXNaeO
	N4TnNUWHldzB/vEQwAcZhz4g2GVrU2svgjfWj1xI6DuOp/x+3y1vQeh3cWg3Y3t+EtYlAG3DeSiI8
	feMaHRfaj+NeDeHY0hwM8od6ih1F1xMuPwjhOLbIk+DnRvAnZPw0mgJfEhWHEL8uZdu1oz7dYi/dP
	ju9RFgfjToVDZeFVTsiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAH3u-0006We-7C; Tue, 17 Sep 2019 17:14:46 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAH3V-0006W9-SA
 for linux-nvme@lists.infradead.org; Tue, 17 Sep 2019 17:14:23 +0000
Received: by mail-qk1-x741.google.com with SMTP id 4so4816601qki.6
 for <linux-nvme@lists.infradead.org>; Tue, 17 Sep 2019 10:14:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=yTyD9yUWFtYIA0scCTczCPkhd5JcPJANPc6cN7Wsz/E=;
 b=BiuZRMW5Fi1f+IYYr6Yje0hOSXGhO34Or3afJoFheK+qbFqDb7OXa5ws8pZeXh68hf
 8YZrnIDe2yuiNC83ivMGc/9E9ZwZKj95+bjcJD8q96aRkV3giQbTTy3FANi2/aqmUiih
 6EjqjuupdvnASlO9HGRTOZtoH2mUfOhLlKYWTHFX/mdrNrE4z69/iBaiPMprK4MeNQOD
 rCk/OpM/xAiBfqaaa+PY9Bwb+LilooUYvCaRIJRntpaJRMChmIvaLVf0mSdRJ5j6YeEV
 2Y/djjoYRN0GOolbt89t0MaJ9KmVDAh/zZGtq3ncKrFbJ3UbrHHe9fadJIAU7ywQTyHg
 xVDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=yTyD9yUWFtYIA0scCTczCPkhd5JcPJANPc6cN7Wsz/E=;
 b=oS3E7d0cGM6tVxrX8U+Cf+yr6vXIe0EPetw5wJ8eN9h2UYgsA5zm0FUlBowqXb1rKg
 DfSqDdfAUO4WrChLr2KdsYUi50o5hFp+FLOyM1D76BAW6moe6HIfLz99BDRs9y/cyx2t
 YvfYQQEFiTnyt6HwJ6PEcq+J5mM9XkJ9EDPC/4pzsqSkc5hCf/9uBK5H641LFzLA2Cnk
 EhaRi0mEAAi9r2HNSEDcY8etrZnUUOonB+XdK7oc98ky0SLjDIuuYqwI+n0435QDILNh
 +aRDsm+LXFD9A64J3r23/r22Jf9rMmUy+6oyzyY/qELslNFKieeE7y2ORkAj4x9DlyKN
 90tA==
X-Gm-Message-State: APjAAAVO+4NMBsBTeyf38Vn4t425DAvYKx0ZBxrpYnGMHn5SsRdt6CAn
 0yq7xqlVuQepKF4/cPu/2i0=
X-Google-Smtp-Source: APXvYqxvcUWsr8GWFKeqM06WqstoDPrK0dQb4NxJ9Bz3ME4xQhyNnfEqzFjY4LR+xwQs1aVX2c+zuA==
X-Received: by 2002:a05:620a:250:: with SMTP id
 q16mr5126680qkn.376.1568740456030; 
 Tue, 17 Sep 2019 10:14:16 -0700 (PDT)
Received: from iss ([191.4.232.8])
 by smtp.gmail.com with ESMTPSA id h68sm1411150qkf.2.2019.09.17.10.14.13
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 17 Sep 2019 10:14:15 -0700 (PDT)
Date: Tue, 17 Sep 2019 14:17:40 -0300
From: Cassiano Campes <cassianocampes@gmail.com>
To: hch@lst.de, axboe@fb.com, kbusch@kernel.org, sagi@grimberg.me
Subject: [PATCH] nvme: write streams are used even when streams are disabled
Message-ID: <20190917171740.GA32566@iss>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_101421_934062_C8AD59B0 
X-CRM114-Status: GOOD (  14.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (cassianocampes[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: cassianocampes@gmail.com, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Even when the streams flag at the nvme_core module is not set, the
nvme_assign_write_stream is called unnecessarily, and the write hint
is passed to the controller, thus resulting in a shadowed stream usage.

Although the user application may pass the write_hint to the device driver,
the user may have disabled the streams support by toggling the
/sys/module/nvme_core/parameters/streams flag.

Later, the user may want to enable the streams support to get some write
performance improvement, however the user will not notice any performance
difference because the write streams separation was already happening
although the streams flag was not set.

Signed-off-by: Cassiano Campes <cassianocampes@gmail.com>
---
 drivers/nvme/host/core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index d3d6b7bd6903..5a77aea0a58e 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -645,7 +645,7 @@ static inline blk_status_t nvme_setup_rw(struct nvme_ns *ns,
 	cmnd->rw.slba = cpu_to_le64(nvme_block_nr(ns, blk_rq_pos(req)));
 	cmnd->rw.length = cpu_to_le16((blk_rq_bytes(req) >> ns->lba_shift) - 1);
 
-	if (req_op(req) == REQ_OP_WRITE && ctrl->nr_streams)
+	if (req_op(req) == REQ_OP_WRITE && ctrl->nr_streams && streams)
 		nvme_assign_write_stream(ctrl, req, &control, &dsmgmt);
 
 	if (ns->ms) {
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
