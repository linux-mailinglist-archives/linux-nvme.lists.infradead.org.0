Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51E5C1794D8
	for <lists+linux-nvme@lfdr.de>; Wed,  4 Mar 2020 17:18:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LKX0ZTI0BGO8uqHO7ZNcSbtVE3a0+3B4tBXYH6H0aOg=; b=OPPooHUdpgqFCg
	dh/4RwaE8klLKuzA2CmtPNd5G7vjpfbBIlhOVORa0halfUJKKChyhLxnjjgLgsKcVUSz3iZbGzaZH
	7ChSoZCT1N/iRRDg/4TMGM5955Y4meTwMr4PqXMzexkNFRxiT1mEZwLdXKU5ySA7EVboY1+0HJD7G
	2bzbvQoTnefRn4doRTjdPmcMZa7HSYNT/HUuqadDmnTXK6LWZJp+FMpytWwThM8dSM0Zz3IIk97D3
	kILnH3j4BV00EkELgqyqec0q6XtAQXt/wr74BevRRqHQ/ltR02Csn1HfVHc/UGDkGQwEuDWspZEZ2
	ifHzgMmgpdBc5vJVXuiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9Wj1-00061Y-FF; Wed, 04 Mar 2020 16:18:23 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9Wit-00060y-8Y
 for linux-nvme@lists.infradead.org; Wed, 04 Mar 2020 16:18:19 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id AD37C68B20; Wed,  4 Mar 2020 17:18:12 +0100 (CET)
Date: Wed, 4 Mar 2020 17:18:12 +0100
From: Christoph Hellwig <hch@lst.de>
To: Max Gurtovoy <maxg@mellanox.com>
Subject: Re: [PATCH 2/3] nvmet-rdma: Implement set_mdts controller op
Message-ID: <20200304161812.GA11453@lst.de>
References: <20200304153935.101063-1-maxg@mellanox.com>
 <20200304153935.101063-2-maxg@mellanox.com> <20200304160105.GA10897@lst.de>
 <2e4190bc-a12a-5eaa-af53-01889f2fbb42@mellanox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2e4190bc-a12a-5eaa-af53-01889f2fbb42@mellanox.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_081818_741897_30528AEE 
X-CRM114-Status: UNSURE (   9.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: sagi@grimberg.me, Chaitanya.Kulkarni@wdc.com, bharat@chelsio.com,
 nirranjan@chelsio.com, linux-nvme@lists.infradead.org, krishna2@chelsio.com,
 jgg@mellanox.com, kbusch@kernel.org, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Mar 04, 2020 at 06:15:55PM +0200, Max Gurtovoy wrote:
>
> On 3/4/2020 6:01 PM, Christoph Hellwig wrote:
>> On Wed, Mar 04, 2020 at 05:39:34PM +0200, Max Gurtovoy wrote:
>>> Set the maximal data transfer size to be 1MB (currently mdts is
>>> unlimited). This will allow calculating the amount of MR's that
>>> one ctrl should allocate to fulfill it's capabilities.
>> Do we reall need an op for this vs just setting the field in
>> nvme_rdma_create_ctrl?
>
> This is target side :)
>
> But we can add it to .add_port and limit/set it thorough configfs as we do 
> for inline_data_size (with default of 1MB).
>
> Let me know what's preferred.

I'm always in favor of avoiding indirect function calls if we can.  But
I don't think we need a configfs interface, just do add_port for now.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
