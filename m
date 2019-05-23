Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3EC127F1E
	for <lists+linux-nvme@lfdr.de>; Thu, 23 May 2019 16:08:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UizemBz5TYfmdzEHrIh8DxznxvSDsj7L1I3d1aGyLBw=; b=N97Q2NfnrvVDcv
	1JkhmvH0WOJ0e6DQpPM0/x5ZaOfAl7NsFQotd7Yd+1rcY3tCtWadkqrLJvmsJqviSH01BnotjjUnI
	NwpmKWpXl2LTQx2sTCNOVsTxc5yeUTeB4Th/ZPyVzfFb6dex06zYaewMUgtME62lh3o9xj3A7TF9R
	MN4s+mICDBcrs268sMvzHFdpoXb48eHsLsyodzwrsGe7vjI1gOHYqyooHflRbPwQSyNGc8Z8h73xS
	Y5ycpjNrgQSwo6Lhsu0MHp44BPrSdmnpdGBLbGNBCsrQPGZB68DdUane6L+VVBoCETaTP4qi8UEQv
	pzb6V1jsOy8Oe9ofpVmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hToOO-0001GJ-AF; Thu, 23 May 2019 14:08:24 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hToOI-0001Fk-Oj
 for linux-nvme@lists.infradead.org; Thu, 23 May 2019 14:08:20 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 7380168AFE; Thu, 23 May 2019 16:07:56 +0200 (CEST)
Date: Thu, 23 May 2019 16:07:56 +0200
From: "hch@lst.de" <hch@lst.de>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCH 9/9] nvme: Retrieve namespaces during list-subsys cmd
Message-ID: <20190523140756.GB19598@lst.de>
References: <1558543193-24752-1-git-send-email-maxg@mellanox.com>
 <1558543193-24752-10-git-send-email-maxg@mellanox.com>
 <20190522224955.GC5857@localhost.localdomain>
 <0c677aa1-aa60-dddd-4a3f-a339545fee63@mellanox.com>
 <20190523133946.GE14049@localhost.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190523133946.GE14049@localhost.localdomain>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_070818_964317_2D426D6F 
X-CRM114-Status: UNSURE (   7.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: "sagi@grimberg.me" <sagi@grimberg.me>,
 "martin.petersen@oracle.com" <martin.petersen@oracle.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>, "Busch,
 Keith" <keith.busch@intel.com>, "shlomin@mellanox.com" <shlomin@mellanox.com>,
 Max Gurtovoy <maxg@mellanox.com>, "hch@lst.de" <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, May 23, 2019 at 07:39:46AM -0600, Keith Busch wrote:
> > if this if fine I'll send a V2 with a small fix.
> 
> I think we'd actually prefer not seeing the hidden block devices, but
> instead use the device name from the "head": nvme4n1, nvme4n2, etc...

Agreed.  The hidden devices are an artefact we should expose to the
user as little as possible.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
