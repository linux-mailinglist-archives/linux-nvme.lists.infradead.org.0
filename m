Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE34E1F3CF9
	for <lists+linux-nvme@lfdr.de>; Tue,  9 Jun 2020 15:45:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ctSlRXv9GDTJcXVunKlg+DEWv+P4QEJD/mTdGU7XXDw=; b=EjraTr0MlPGHhL
	tZPqN53e0RSr2G5ZCuTdWJOE7EyfNVIKa0unJYbW1LCEgnmefoIYAxiKp9MKHnAHDUy6o77OVFgse
	ftGTKUmIi/taqSZVImfZocQWJPWE7gnk0NxR48PaIaSOgmoM4vmaATyErWG0Qrcqk/a0JU4/KlPtU
	85umtmsQnKOq9b8TZN4s7BUCOjI61ntuG21VUh+ZpmfzMxr0SNa6FIpna9NqN4krzHuAZBePiOK1T
	ItqpsIu9N3VqaL7C/9ORsVZxnm3Pfug7Sy1ZulJCHR6wMUOk0N1wpUgtxTZth+3vIZy96ymLHF2y2
	k+gAeOI0gn/iWDFOUW7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jieYh-0007KG-7o; Tue, 09 Jun 2020 13:44:55 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jieYc-0007JV-Mj
 for linux-nvme@lists.infradead.org; Tue, 09 Jun 2020 13:44:52 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 7E1CF68BEB; Tue,  9 Jun 2020 15:44:44 +0200 (CEST)
Date: Tue, 9 Jun 2020 15:44:43 +0200
From: Christoph Hellwig <hch@lst.de>
To: Niklas Cassel <niklas.cassel@wdc.com>
Subject: Re: [PATCH] nvme: do not call del_gendisk() on a disk that was
 never added
Message-ID: <20200609134443.GA10030@lst.de>
References: <20200607114520.130756-1-niklas.cassel@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200607114520.130756-1-niklas.cassel@wdc.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_064450_892224_E1DEE0C2 
X-CRM114-Status: UNSURE (   5.95  )
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
Cc: Sagi Grimberg <sagi@grimberg.me>, Israel Rukshin <israelr@mellanox.com>,
 James Smart <james.smart@broadcom.com>, linux-nvme@lists.infradead.org,
 linux-kernel@vger.kernel.org, Jens Axboe <axboe@fb.com>,
 Keith Busch <kbusch@kernel.org>, Max Gurtovoy <maxg@mellanox.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Thanks,

applied to nvme-5.8.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
