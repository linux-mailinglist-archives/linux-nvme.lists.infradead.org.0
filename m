Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD7CB18847B
	for <lists+linux-nvme@lfdr.de>; Tue, 17 Mar 2020 13:47:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6ohFoMmqoKVhjssodDPTLnxlW/V9UEJtj/VB8JqXIJE=; b=PmdUyT8UOZONtG
	WnWNym55nbm5un7tzgNQmb0Qml2bRImEfGgWn4SUgNmYn2xHbrt5O+ug7UjcJz7VWz+atVXxknuZl
	KCdcJuY84jNYew7j59yG3z8Bd+y7AmxedHjaWPTuIAD/qI19HzZzAXZ7KzULne3jGn4LZNIWBEHFR
	4r9I0HqGUNjFk1tGYSrv7BHNPHDXAnQPAtKfg3Suqpio4WCgYlnVoZ2lPDkdFihp0BToIVigVA6zk
	IIKrrbzpYAeeRUU4t0ZUML4lA5rlNyAWBbg8Sq5e2Wm3Xz1tilCs3l3Y8e9HfJGf5OJLgt4qnEo15
	Pz5kHQHYR3/PuyMjgtNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEBch-0006jB-US; Tue, 17 Mar 2020 12:47:07 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEBcd-0006fD-Mh
 for linux-nvme@lists.infradead.org; Tue, 17 Mar 2020 12:47:04 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id D35F468BFE; Tue, 17 Mar 2020 13:47:01 +0100 (CET)
Date: Tue, 17 Mar 2020 13:47:01 +0100
From: Christoph Hellwig <hch@lst.de>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCH] nvme/fc: use real sqsize as argument when connecting
 queues
Message-ID: <20200317124701.GC12316@lst.de>
References: <20200313124808.39320-1-hare@suse.de>
 <20200316174819.GB1069991@dhcp-10-100-145-180.wdl.wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200316174819.GB1069991@dhcp-10-100-145-180.wdl.wdc.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_054703_886902_8D847915 
X-CRM114-Status: UNSURE (   9.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Sagi Grimberg <sagi@grimberg.me>, Keith Busch <keith.busch@wdc.com>,
 James Smart <james.smart@broadcom.com>, linux-nvme@lists.infradead.org,
 Hannes Reinecke <hare@suse.de>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Mar 16, 2020 at 10:48:19AM -0700, Keith Busch wrote:
> On Fri, Mar 13, 2020 at 01:48:08PM +0100, Hannes Reinecke wrote:
> > When creating queues we should be passing in the real sqsize number,
> > and not increasing it by one just so that the function has to
> > substract it again.
> 
> Kind of makes me wonder: why are we even passing the sq size as a
> parameter at all? The 'ctrl' parameter provides the same thing.

Yes, please kill the parameter entirely instead.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
