Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 825BB39264
	for <lists+linux-nvme@lfdr.de>; Fri,  7 Jun 2019 18:43:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ExbF0gzGu+JJUxpq4pWbrFno5juIfsGelz9T7CcrvJk=; b=BgSQjPjqi7J9Dg
	SEFW8h78C7XiWL5FDykfqZINlp/+Y2tQHfYHjhG5JtNsWxrDijYIXS7chiQDb4u5YSMKy0ksgXmy8
	qLuRS/bLPoZwSwDQtHEx0S8/CBjPN93dNJuvDmIcnbaByPZ1Eaw0LfdL+9a1xQ3Gf01Tg3N8r/faA
	Is6JvO7BnOSIGBketigyEtsoy26FYUAk8liLFZA4T7plSqDjs/s7Xfgp5VeD1cnzeaJsVE75Dc1Ya
	+6i49IikjvsnYBLqrCgdGjMacS0+DDmekRDy6I9Rm/RjgmeK3mVt+uYccJvU/R4d8O9LHQ/Nu+oCm
	FOz8IcPpF0ZGx9KFpfZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZHxS-0006vy-I5; Fri, 07 Jun 2019 16:43:14 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZHxM-0006vQ-16
 for linux-nvme@lists.infradead.org; Fri, 07 Jun 2019 16:43:09 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id BC6A068AFE; Fri,  7 Jun 2019 18:42:41 +0200 (CEST)
Date: Fri, 7 Jun 2019 18:42:41 +0200
From: Christoph Hellwig <hch@lst.de>
To: Bart Van Assche <bvanassche@acm.org>
Subject: Re: [PATCH 2/2] nvme: Set physical block size and optimal I/O size
 according to NVMe 1.4
Message-ID: <20190607164241.GB7307@lst.de>
References: <20190606212854.122478-1-bvanassche@acm.org>
 <20190606212854.122478-3-bvanassche@acm.org>
 <BYAPR04MB5749E9F546E6EA5415BEB20686170@BYAPR04MB5749.namprd04.prod.outlook.com>
 <969c0a9c-2e5a-b609-5c3b-411f9f2bf6ca@acm.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <969c0a9c-2e5a-b609-5c3b-411f9f2bf6ca@acm.org>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_094308_227394_8242934E 
X-CRM114-Status: UNSURE (   9.31  )
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
Cc: Hannes Reinecke <hare@suse.com>, Sagi Grimberg <sagi@grimberg.me>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Jun 06, 2019 at 02:48:24PM -0700, Bart Van Assche wrote:
> On 6/6/19 2:42 PM, Chaitanya Kulkarni wrote:
>> Looks good. One quick question though do you actually have a controller
>> on which you have tested this feature ?
>
> Hi Chaitanya,
>
> From the cover letter of this patch series: "These patches
> compile correctly but have not been tested in any other way."

You could create something based of our linux I/O limits for the Linux
nvme target to expose those and test the code.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
