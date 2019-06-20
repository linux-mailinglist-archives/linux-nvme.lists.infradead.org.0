Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A26114C747
	for <lists+linux-nvme@lfdr.de>; Thu, 20 Jun 2019 08:11:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gs6/JzvGVuxGBcqDw7SB5vRgmSofWa8OywGYMk7gAN8=; b=hvm2P8MH1JjyUn
	Cv+q0r+yq8wzzGEKf+ZeKBaK/12PhzDf7GYzotXLla/JOOukPOem9lihSo5pFzNq8zpYVTsWBy66p
	qQ157PIWPQWzIs+9H+WUvf6/uxEcVxrDrIMRBwXJRr4vAU3DuVls9wp/TT699RHPOvMcWvMA1ao6g
	mEWggfb6ZsapbVNp05/qAWfRDVQnRQKKG3amDHKq1e6UcrmwjuJtYvO1ITw2M608BTP6SoUD5n1vo
	2EOrPj70ksnjwRjIT/HIc6vizJWBosOqL/Kg0N1tolPR8zLOdiFXFG6rDJC1h6W4HTDSUpYcbsU7+
	0ryomPYJjFQ4x/hOCu8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdqI3-0004t2-RY; Thu, 20 Jun 2019 06:11:19 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdqHw-0004rm-MR
 for linux-nvme@lists.infradead.org; Thu, 20 Jun 2019 06:11:14 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 948A668B05; Thu, 20 Jun 2019 08:10:38 +0200 (CEST)
Date: Thu, 20 Jun 2019 08:10:38 +0200
From: Christoph Hellwig <hch@lst.de>
To: Daniel Drake <drake@endlessm.com>
Subject: Re: [PATCH v2 2/5] nvme: rename "pci" operations to "mmio"
Message-ID: <20190620061038.GA20564@lst.de>
References: <20190620051333.2235-1-drake@endlessm.com>
 <20190620051333.2235-3-drake@endlessm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190620051333.2235-3-drake@endlessm.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_231112_883248_53EE7549 
X-CRM114-Status: UNSURE (   6.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: axboe@kernel.dk, sagi@grimberg.me, linux-ide@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, bhelgaas@google.com,
 alex.williamson@redhat.com, hare@suse.de, kbusch@kernel.org,
 dan.j.williams@intel.com, linux@endlessm.com, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Please give up on this route.  We will not accept messing the NVMe
driver for Intels fucked up chipsets that are so bad that even they
are not allowed to talk about it anymore.

The Linux NVMe driver will deal with NVMe as specified plus whatever
minor tweaks we'll need for small bugs.  Hiding it behind an AHCI
device is completely out of scope and will not be accepted.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
