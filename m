Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABC9211C908
	for <lists+linux-nvme@lfdr.de>; Thu, 12 Dec 2019 10:22:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HwvxcFXz0FPDSS/rEDVpPdGNZCmfXBZyOQhw1E8AYDE=; b=twYa/+kO0JK4jF
	lvimT7xLE+xNh7hU/6yDTcUhhbvRq1DUgPCoDCY1Eev4QgTpIa6mMoI1Ax4KV6VOP9bTBYjY/mSrO
	PJqSleeS/ewOe06TEDnSh0SEM/M7IXcn42mssRCfhdeag14SAGtDITL2YwJw0iMEhjCQ6+my3GwML
	3AWxUwlx4Bk1oCjnSQzCdzdIfsWwnI1MyLx5qZCLd6CH+CUkxOVIKQZ/ybEM8y+vtGSKGgSVQzKup
	pxz2FNlmkw9uBAr1xEhgn14W/LOvYT0DKt2sF8YUhklhlAolwMOS8QrZVlazl82kn5YPeiu7EXSgr
	om0QTDOfWpeMvNKxJp6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifKg6-0001dx-Dp; Thu, 12 Dec 2019 09:22:34 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifKfz-0001cU-GS
 for linux-nvme@lists.infradead.org; Thu, 12 Dec 2019 09:22:28 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 1F54968B05; Thu, 12 Dec 2019 10:22:25 +0100 (CET)
Date: Thu, 12 Dec 2019 10:22:24 +0100
From: Christoph Hellwig <hch@lst.de>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH V3 1/3] nvmet: make ctrl-id configurable
Message-ID: <20191212092224.GG2399@lst.de>
References: <20191127094034.12334-1-chaitanya.kulkarni@wdc.com>
 <20191127094034.12334-2-chaitanya.kulkarni@wdc.com>
 <b08812b4-8fa7-d814-cce2-2d8248c233ae@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b08812b4-8fa7-d814-cce2-2d8248c233ae@grimberg.me>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_012227_700016_4991BDAF 
X-CRM114-Status: UNSURE (   6.98  )
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
Cc: linux-nvme@lists.infradead.org,
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Dec 11, 2019 at 04:45:02PM -0800, Sagi Grimberg wrote:
>
>> +static ssize_t nvmet_subsys_attr_cntlid_max_store(struct config_item *item,
>> +						  const char *page, size_t cnt)
>> +{
>> +	int ret = -EINVAL;
>> +	u16 cntlid_max;
>> +
>> +	if (sscanf(page, "%hu\n", &cntlid_max) != 1)
>> +		return ret;
>> +
>> +	if (cntlid_max == 0) {
>> +		pr_info("specified cntlid_max = 0 is not allowed\n");
>> +		return ret;
>> +	}
>
> Check not exceeds unsigned short max value?

sscanf with %hu takes care of that for you.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
