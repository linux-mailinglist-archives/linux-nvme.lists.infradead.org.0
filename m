Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8F235811B
	for <lists+linux-nvme@lfdr.de>; Thu, 27 Jun 2019 13:04:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L0nAev4zaSLUfsf1JqiECoYu8q6ozfUNkACKtfz0w7A=; b=uQd+fr16PjqP6k
	IaiqQRHR9FxZpQ9dEdy7aJkfIAnmsFJRybiMTA99SctxhWIciNSeMeV4O7//4SPI0lDey3FNVwJQk
	JHtDahb1KkRy0VKaCYT93fe/iW3AvmAWkL8Cm1JDRP9C+lqJgZPP8g0j2zORbDMvu/MqI+v1AQuA+
	GgKx5+8cEtOI3Pj8lATv3YEyPJIKTw8PlNt3DspSKNgdQw1pS8i0DmG8CuvO52BkbDneC4GBm5cuR
	38n+QWX4WU0bjECZeJUhN2+R+6xWOhnPXco6uvjozDziifAAu/0RRb8ZUeHhxkWJakPhqGSz/cI4q
	Fp4/Gze5q5NCzkAxt9Jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgSCW-0002CO-QO; Thu, 27 Jun 2019 11:04:24 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgSCP-0002Bc-Cc
 for linux-nvme@lists.infradead.org; Thu, 27 Jun 2019 11:04:18 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id E703868B20; Thu, 27 Jun 2019 13:03:42 +0200 (CEST)
Date: Thu, 27 Jun 2019 13:03:42 +0200
From: Christoph Hellwig <hch@lst.de>
To: Minwoo Im <minwoo.im.dev@gmail.com>
Subject: Re: [PATCH v3 5/5] nvme: add support weighted round robin queue
Message-ID: <20190627110342.GA13612@lst.de>
References: <cover.1561385989.git.zhangweiping@didiglobal.com>
 <6e3b0f511a291dd0ce570a6cc5393e10d4509d0e.1561385989.git.zhangweiping@didiglobal.com>
 <20190627103719.GC4421@minwooim-desktop>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190627103719.GC4421@minwooim-desktop>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_040417_574893_5E29C79A 
X-CRM114-Status: UNSURE (   7.28  )
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
Cc: keith.busch@intel.com, linux-block@vger.kernel.org, hch@lst.de,
 linux-nvme@lists.infradead.org, sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Jun 27, 2019 at 07:37:19PM +0900, Minwoo Im wrote:
> Hi, Maintainers
> 
> Would you guys please give some thoughts about this patch?  I like this
> feature WRR addition to the driver so I really want to hear something
> from you guys.

We are at the end of the merge window with tons of things to sort out.
A giant feature series with a lot of impact is not at the top of the
priority list right now.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
