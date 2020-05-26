Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ADCB1C1A1B
	for <lists+linux-nvme@lfdr.de>; Fri,  1 May 2020 17:54:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GJukL1/biX+dzz74O2ZbBcJFP6T0/HSg0KF7CtWN92Q=; b=NZCS+UkMrF2Seh
	Djwda0fi0Fr8TATmzVL131qIMWZdtIQCdvo/gyjm4Vd3tMxXoDNPmTm1119P5ELVUXP1ezpVhX/HH
	oleFjBMAgcvw6LVOEk+NKtcaaqNo3QzUvgi2CzIy2VLqnN/C2GbVQcbNZVrs7Db7EKRG3OXvqViBM
	PHfj1NMUfPe68aS0c+9i/GgYFKMq5SOydav2ONC19Us0GNLFCetUn3FwryQfWVWEHQV8gDoC+EvkE
	C0XXB6jB7GwsoiIerAl+TCy30b+7q9tzZxB2VmB9SjFSvHWP454PbgNEGxK79N1z796pcygp98vBz
	8iztMBIof/5h8Ck+V5Bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUXz8-0001nG-Vn; Fri, 01 May 2020 15:53:54 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUXz4-0001mf-Pa
 for linux-nvme@lists.infradead.org; Fri, 01 May 2020 15:53:52 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 1732B68BFE; Fri,  1 May 2020 17:53:48 +0200 (CEST)
Date: Fri, 1 May 2020 17:53:47 +0200
From: Christoph Hellwig <hch@lst.de>
To: Max Gurtovoy <maxg@mellanox.com>
Subject: Re: [PATCH 12/15] nvme: add Metadata Capabilities enumerations
Message-ID: <20200501155347.GB17680@lst.de>
References: <20200428131135.211521-1-maxg@mellanox.com>
 <20200428131135.211521-13-maxg@mellanox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200428131135.211521-13-maxg@mellanox.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_085350_981536_EE62402F 
X-CRM114-Status: UNSURE (   9.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: axboe@kernel.dk, jsmart2021@gmail.com, sagi@grimberg.me,
 martin.petersen@oracle.com, shlomin@mellanox.com, israelr@mellanox.com,
 vladimirk@mellanox.com, linux-nvme@lists.infradead.org, idanb@mellanox.com,
 oren@mellanox.com, kbusch@kernel.org, nitzanc@mellanox.com, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Apr 28, 2020 at 04:11:32PM +0300, Max Gurtovoy wrote:
> From: Israel Rukshin <israelr@mellanox.com>
> 
> The enumerations will be used to expose the namespace metadata format by
> the target.
> 
> Suggested-by: Christoph Hellwig <hch@lst.de>
> Signed-off-by: Israel Rukshin <israelr@mellanox.com>
> Signed-off-by: Max Gurtovoy <maxg@mellanox.com>

Looks good,

Reviewed-by: Christoph Hellwig <hch@lst.de>

And while reviewing this I really wonder why NVMe has Bit 4
of FLBAS and the MC field, as I can't see what MC buys us over the
FLBAS bit.  But of course we'll need to set this on the target side,
so..

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
