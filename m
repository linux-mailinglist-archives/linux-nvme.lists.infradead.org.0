Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB9D442635
	for <lists+linux-nvme@lfdr.de>; Wed, 12 Jun 2019 14:46:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/GwcNK7FcQsyPSukZCzKNs8aWqHWcM3ThUDkq/J72qw=; b=sRR7h5e8oBq/NP
	iqP+ZvkvnjP3HGDJV9Js1r4UVQw6QAJncxg3WVD5Fe1YElHzWt8LCkdcOUUKpVmHksCVhpKw3tnwY
	y/odpEQevZbeW0inQc8Z/tiAa3MuCRtigTH62JLEfoXuAcf7Ae2yO38x3BpK9iOn34AF3IM0tKjEF
	xJkMNH3BjZEOYYqtYiKoWGEwtWQhBU/c/Zz5B6aGNm0tYA3eNzVuk3GbZdDlMgpldArzcDT6CTdUq
	lv2X+deTbKSOHBnnlpALBR80OoKLNqQ7gEK+U0/lXdvN6E3x1dbPh5wCoUKCluaEeWgXnCukh0M9S
	Strzc1MF/vciHqK+02cQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb2dZ-0001Yy-0K; Wed, 12 Jun 2019 12:45:57 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb2dR-0001YU-Pl
 for linux-nvme@lists.infradead.org; Wed, 12 Jun 2019 12:45:51 +0000
Received: by mail-pf1-x442.google.com with SMTP id r7so3724092pfl.3
 for <linux-nvme@lists.infradead.org>; Wed, 12 Jun 2019 05:45:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=962bjyjK0V70Ejflx7rJIDDTRPcId4aybaNcxKPsyWs=;
 b=dnNyS5PBu8FRHXFNi+4X1VtIeEg78491hoxMBFkkTQ6hzL60yVXST8YQwARFLFXtIc
 QJ9GVleTSMHLthZt69T8eBaE2u1dVausenf9lLfzaq8J9xpqEU8mFHfJXHBKQHoV4nuj
 Bo8bs2o7SdhIvs1YLp1JT+ZrS2seyE0RsP/UFyWROjg/9+ZytLrOsPvqaJjg0gPibaDU
 y56eE8nE5QCOt/J/sjXpAWSPqkK+bb+5A4lItZxJlTJcgMrrz8c/p4ySyPghNpKOS3ID
 7TynworkZhENGt76RLUpz5TvLTs2nMr/lFPKfJi8zDok9MvGaXD93Hhtu9nlzmYtbWFf
 aulA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=962bjyjK0V70Ejflx7rJIDDTRPcId4aybaNcxKPsyWs=;
 b=L3EIGESQsNBZds+8gfKdUxFAl0J52/1nEXQFPv32JRs3QtRCe05xd5WPtr/eU2+Ryi
 0AYmC+/SXO26zdnU7Fr9IcNS8LFGAKRMoKzUw7ks//LoU2f2+RKBQ8d55HE/8jX9yffZ
 acJt+Ds3e2/NZRdda4VQCQbWaCVrbpaXwIvznjcR/ShPtT+oOzft7BPXSL82yfbnB2ab
 PxC4ld1cSyDO/YFyllQziXPpp4ljM770H9/ufu1tyTpIaofkbcRyGbJyk65QcvVdvc6E
 BfH/G516ie7Ct6+Di6Fe+QYej0r8SR2KialksZjcTAzDNbjzSungqD+t93Rbu6cf3qT1
 XEIQ==
X-Gm-Message-State: APjAAAWYKPrROLBEYMGgw4FRCoUud/T6G8VFWRj0zh5RjCOlXD7NgENy
 0HMMmjDR2fPv3xc9HwtGS4qvOEKoVwE=
X-Google-Smtp-Source: APXvYqweIURM5MlsdV5uQPXRs1xamIphSkvSBH1Ls6mCdTa769haS9uMM/lTlbNjATtFqv0fVUm+Yg==
X-Received: by 2002:a17:90a:de08:: with SMTP id
 m8mr32643696pjv.18.1560343548462; 
 Wed, 12 Jun 2019 05:45:48 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id 144sm26795479pfy.54.2019.06.12.05.45.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 12 Jun 2019 05:45:47 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH V8 0/5] nvme-trace: Add support for fabrics command
Date: Wed, 12 Jun 2019 21:45:28 +0900
Message-Id: <20190612124533.10299-1-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_054549_838364_B809EDA2 
X-CRM114-Status: GOOD (  16.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: =?UTF-8?q?Javier=20Gonz=C3=A1lez?= <javier@javigon.com>,
 Sagi Grimberg <sagi@grimberg.me>, Jens Axboe <axboe@fb.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi Christoph, Hi Sagi.

It's been few days for this series to be reviewed.  Please consider it
for the nvme-5.3.

This series introduces not only fabrics commands tracing in nvme host
side, but also target side tracing features.

Changes to V7:
  - http://lists.infradead.org/pipermail/linux-nvme/2019-June/024818.html
  - Add Reviewed-by: tag from Christoph.
  - Drop the 3rd commit because command_id is not in __le16.
  - Drop the 5th commit, we just can print reserved fields out.
  - Few style changes suggested by Christoph.
  - Words changes in the comments pointed out by Christoph.

Changes to V6:
  - Removed the first patch by a suggestion from Christoph.  The helper
    nvmet_req_to_ctrl() has been moved to the last commit which
    introduces the target-side tracing.
  - Symbolic print for the opcodes for admin, nvm, and fabrics have been
    moved to <linux/nvme.h> to be shared between host and target side.
    It's just a bunch of macros so that we don't share the actual code
    as suggested by Christoph.
  - Print "device_path" when I/O commands come in and out.  The uuid
    will make the trace line too long so that we just can know the
    backed device for the request.
  - From the 2nd patch to 6th patch, they have been added to this series
    to make sure the host-side trace supports the exactly same thing
    with the target-side introduced.

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

Minwoo Im (5):
  nvme: trace: do not EXPORT_SYMBOL for a trace function
  nvme: trace: move opcode symbol print to nvme.h
  nvme: trace: support for fabrics commands in host-side
  nvme: trace: print result and status in hex format
  nvmet: introduce target-side trace

 drivers/nvme/host/trace.c    |  68 +++++++++++-
 drivers/nvme/host/trace.h    |  66 +++---------
 drivers/nvme/target/Makefile |   3 +
 drivers/nvme/target/core.c   |   8 ++
 drivers/nvme/target/trace.c  | 202 +++++++++++++++++++++++++++++++++++
 drivers/nvme/target/trace.h  | 141 ++++++++++++++++++++++++
 include/linux/nvme.h         |  59 ++++++++++
 7 files changed, 495 insertions(+), 52 deletions(-)
 create mode 100644 drivers/nvme/target/trace.c
 create mode 100644 drivers/nvme/target/trace.h

-- 
2.21.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
