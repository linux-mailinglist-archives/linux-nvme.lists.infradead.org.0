Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA9ACC0D4B
	for <lists+linux-nvme@lfdr.de>; Fri, 27 Sep 2019 23:32:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cRYQUeiRMR2ZSo6cH3EbMxob2YTRHdXx6tfoEj5nVKU=; b=qSrp1GPvZQbm0F
	wizID/+Vlk1A7oVVpCiz5N2x0enVSvXAXYAjzbWSzHo24XXReSHME/7VLxozU0qqFgCiRQMxGyDiA
	0rcolzxhatqBzO0EOhH7vfVTMi/xz3QVoBJ3193uhuUe6+idKue9ZKXMBPWIDM8bL7jZhlzI51zHy
	V+vM0of064K6WzwzlJZWJoBEYsZjGTBWXmVCnhW849Exnyu1F0/rqj8Vwifc2XV30pCeSpqWgEIDl
	Nd21HMUMAIlV9y5yCrbkrK7BhvMkIEInvkMolo3rV5tq5P49CgrFN6X5ftHG9T67BI6+uB6eZMV5C
	aRIETZQz9KqpmJU0Y1HQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDxqw-0000GK-6L; Fri, 27 Sep 2019 21:32:38 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDxqr-0000Fv-S5
 for linux-nvme@lists.infradead.org; Fri, 27 Sep 2019 21:32:35 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 59E0668B05; Fri, 27 Sep 2019 23:32:30 +0200 (CEST)
Date: Fri, 27 Sep 2019 23:32:30 +0200
From: Christoph Hellwig <hch@lst.de>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH] nvme: set NVME_REQ_CANCELLED flag when cancelling a
 request
Message-ID: <20190927213230.GF16819@lst.de>
References: <20190920181913.14723-1-sagi@grimberg.me>
 <BYAPR04MB5749B6AC6EE50BEC6C63D213868A0@BYAPR04MB5749.namprd04.prod.outlook.com>
 <140c41d6-5e9e-609f-0592-a5014ab67ee8@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <140c41d6-5e9e-609f-0592-a5014ab67ee8@grimberg.me>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_143234_056111_A4FD5AD0 
X-CRM114-Status: UNSURE (   8.03  )
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
Cc: Keith Busch <keith.busch@intel.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Sep 23, 2019 at 10:04:19AM -0700, Sagi Grimberg wrote:
>> If you are okay I can send a separate patch on the top yours.
>
> That is fine with me.

I think we really should have the whole thing in one patch one way or
another.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
