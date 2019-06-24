Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09F2D51BF5
	for <lists+linux-nvme@lfdr.de>; Mon, 24 Jun 2019 22:05:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PxNdOVWN5uJbQEVEybOaWZWYLFavc7TR81KTa6Te1/g=; b=D3oY1DxPFzhFsl
	JzgqUslUL1S2f45vQLtYN41vdc5kvkNclGI9TrMOOjsbZCex4QlfWHpt/E1r0S2W/cdq5vLHKbTed
	CmnOkD55HhLD/Bto31OTD2KbpMgHIsirFGFPEr963p0DtXbaNkYV4W1kM8iRkTr1XxT0Gn7t/j5aw
	lbstItHPoOTyylSdkXScREr3yWUCGgYN/ug69S7kbUPcuv/q6xdu7D4mTyfLafe9K3yLZPaThHInD
	sDr+l4IyCVm3QItof25gRyt1I7Sr+xGc1MQMyZgYGQ1E2kmFN8vwFboSEZJVX5MqVFttY1NP1/YZ1
	aXiF2ZSX/u5ggsqWtnJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfVDc-0005AS-Cv; Mon, 24 Jun 2019 20:05:36 +0000
Received: from mail-pl1-f177.google.com ([209.85.214.177])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfVDV-00059m-0U
 for linux-nvme@lists.infradead.org; Mon, 24 Jun 2019 20:05:30 +0000
Received: by mail-pl1-f177.google.com with SMTP id i2so7503091plt.1
 for <linux-nvme@lists.infradead.org>; Mon, 24 Jun 2019 13:05:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=kumRx58KXqa3csyQZQl4oL3sC98n9lFgJyWHXTO0jso=;
 b=B95XQd1gnE+vfGigdI9/rUAFSlS3DumyZSEUw+NlOa3Q5uNF6Pk4m3hWeLDNNHYjm9
 XfSqKGH1aa1UnOiS20xRq6ctfIiE5I9N2iPRxleuI6+MsJsxfRMYDO/+fS3RUqPABNaD
 lv+mS33bXhf4gSQ+Sa0YymHh43Si8QZDSQLhOT4d/do/drp2yZyj5L+j2xwVNM8jwC3H
 7hFSrr5vUTB9+M+ewfMDt0hMVFheCXCBmTEkM+pxy5ybnPzXh2/rt2rAJHxnTwntgClG
 9pWS1OnU3UvbFwgKfLZhRqfIwiS2yb9GVeHZQaPtZmep3oBxbs3mNfbbjeu5byHwZJBL
 297g==
X-Gm-Message-State: APjAAAVwRHsMU7QURwWr/6Z7bpQaa4QlIsHiOQnAPplLArvozxc3ecA0
 l7pJHfsqvmO5udxcKTvIeHI=
X-Google-Smtp-Source: APXvYqyT1zM6zpCBAh6fDUtCr3yZIe7PYVPq1S0nT5zhRhWREefhk3q1DcwlkdQ5gOOfAicDde3How==
X-Received: by 2002:a17:902:8f93:: with SMTP id
 z19mr62402090plo.97.1561406727750; 
 Mon, 24 Jun 2019 13:05:27 -0700 (PDT)
Received: from desktop-bart.svl.corp.google.com
 ([2620:15c:2cd:202:4308:52a3:24b6:2c60])
 by smtp.gmail.com with ESMTPSA id n7sm13060878pff.59.2019.06.24.13.05.26
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 24 Jun 2019 13:05:27 -0700 (PDT)
From: Bart Van Assche <bvanassche@acm.org>
To: Keith Busch <keith.busch@intel.com>,
	Sagi Grimberg <sagi@grimberg.me>
Subject: [PATCH nvme-cli 0/3] Restore support for older gcc and glibc
Date: Mon, 24 Jun 2019 13:05:18 -0700
Message-Id: <20190624200521.28191-1-bvanassche@acm.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_130529_051141_0B3CEC63 
X-CRM114-Status: UNSURE (   8.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.177 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bart.vanassche[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 Bart Van Assche <bvanassche@acm.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi Keith,

The three patches in this series fix recently introduced regressions for
older gcc / glibc versions and fix more endianness issues. Please consider
these patches.

Thanks,

Bart.

Bart Van Assche (3):
  nvme-cli: Restore support for older gcc versions
  nvme-cli: Restore RHEL 7 compatibility
  nvme-cli: Fix more endianness issues

 fabrics.c                      |  2 +-
 linux/nvme.h                   |  9 ++--
 nvme-ioctl.c                   | 30 ++++++-------
 nvme-print.c                   | 53 ++++++++++++++---------
 nvme.c                         |  2 +-
 nvme.h                         | 54 ++++++++++++++---------
 plugins/intel/intel-nvme.c     | 16 +++----
 plugins/virtium/virtium-nvme.c |  2 +-
 plugins/wdc/wdc-nvme.c         | 79 +++++++++++++++++-----------------
 9 files changed, 136 insertions(+), 111 deletions(-)

-- 
2.22.0.410.gd8fdbe21b5-goog


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
