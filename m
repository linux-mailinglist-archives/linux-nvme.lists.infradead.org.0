Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 839C137F94
	for <lists+linux-nvme@lfdr.de>; Thu,  6 Jun 2019 23:29:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LQJU6EHdDllzxJPg4St5kXCiTWRsvz+9y83WUW9VxVQ=; b=WwqLAZ/Aid+Wo3
	x9N1soAnOlaTXzdm9cndN6mGgH1IEuKx6J/sr0uTL+kOyFzzA8S76F+Zo3EoEnl0vHyErQIqKUXaj
	lQMgLni72Ez3K603mnDWpXrLb3zFaRsY13CzZ/gIS3OQ/l2h6sUSTLOHn34u11ZdzUp1ROXorMDYr
	wWf6OQZbK3Y3bBDYS06O7/CpzrVJqnJI/TNUVecHHCeGsjvQs0kyCuT3axUbcDlKXT7IFc85NJBNb
	4x4w9ZmIowYxhZkvshuqSHqJbcZ0/XPpDXa9z/kSbAMcfts81gv5dWvvJHJYUMfEwdDDORGeViNza
	g+Ks/A3hqGWhrr955RtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYzwg-0006rq-0t; Thu, 06 Jun 2019 21:29:14 +0000
Received: from mail-pf1-f195.google.com ([209.85.210.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYzwZ-0006qw-Ch
 for linux-nvme@lists.infradead.org; Thu, 06 Jun 2019 21:29:10 +0000
Received: by mail-pf1-f195.google.com with SMTP id i189so2262845pfg.10
 for <linux-nvme@lists.infradead.org>; Thu, 06 Jun 2019 14:29:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=NnE5UMkEaJfCF908fSGm3qVyECr/2C+NmT8h9qKo8tA=;
 b=lvRAPWZNKmHBTJWvVxcVpKplp1XFvq9RmzOu4IFwfwhoKKKE9fm8tgqBkgAmXtt/E7
 HgdLNv8yP4vn8VK30tTRMKX/nR8acS0RD8bAY02lWaRV2F4vivkZUCG4D77WGjugAqcl
 H0o3oeGKVrnQqIut6L9STiGYTt4gt+f1zfHzAxKdFKG4gLxIuYKJYA7kr26+5bgdl/OW
 Q8KvRrKIkoA1uIT153IqE865OxBCzNQxWQjC6P50NFnTS3xYaB2K/D6hc5KFK4vMUMxP
 aHOF7x4fFHnmv6SIDIdx9Iz8hFULFawXgpv+7GMlIMDx+bRQr55h7yIT3aDXbJodvkU8
 CLSw==
X-Gm-Message-State: APjAAAVqVIUaEcwA4jqCRdS1rdr19S6Z/BHvaTzohJnVKithMMye/g8s
 4jNGYqoDz7QWWaxknrGIwZ8=
X-Google-Smtp-Source: APXvYqzwbZYJGP6DOg7PIXQ2ki84ZZ5O/5aXmZXelvqn0iCwSIY6Pljvq/z6l4LjolqKdACIX89big==
X-Received: by 2002:a63:68c5:: with SMTP id d188mr529098pgc.429.1559856544380; 
 Thu, 06 Jun 2019 14:29:04 -0700 (PDT)
Received: from desktop-bart.svl.corp.google.com
 ([2620:15c:2cd:202:4308:52a3:24b6:2c60])
 by smtp.gmail.com with ESMTPSA id u1sm85940pfh.85.2019.06.06.14.29.03
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 06 Jun 2019 14:29:03 -0700 (PDT)
From: Bart Van Assche <bvanassche@acm.org>
To: Keith Busch <keith.busch@intel.com>,
	Sagi Grimberg <sagi@grimberg.me>
Subject: [PATCH 0/2] NVMe 1.4 Identify Namespace Support
Date: Thu,  6 Jun 2019 14:28:52 -0700
Message-Id: <20190606212854.122478-1-bvanassche@acm.org>
X-Mailer: git-send-email 2.20.GIT
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_142907_425186_6C4C40C7 
X-CRM114-Status: GOOD (  11.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.195 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.195 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bart.vanassche[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 Bart Van Assche <bvanassche@acm.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi Keith,

These two patches are what I came up with after having read the Identify
Namespace sections in final draft of version 1.4 of the NVMe. These patches
compile correctly but have not been tested in any other way. Please consider
these patches for kernel version 5.3.

Thanks,

Bart.

Bart Van Assche (2):
  nvme: Introduce NVMe 1.4 Identify Namespace fields in struct
    nvme_id_ns
  nvme: Set physical block size and optimal I/O size according to NVMe
    1.4

 drivers/nvme/host/core.c | 14 ++++++++++++--
 include/linux/nvme.h     | 12 +++++++++---
 2 files changed, 21 insertions(+), 5 deletions(-)

-- 
2.22.0.rc3


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
