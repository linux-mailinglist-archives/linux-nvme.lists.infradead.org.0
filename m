Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B4F9684C3
	for <lists+linux-nvme@lfdr.de>; Mon, 15 Jul 2019 10:01:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CBHgaa4BFuhWcZu5OJEmiM4yQsnIgBmOfHHBgxu2d+g=; b=V3voF7c+MAcWsv
	eIrTw+i3hFSEXTLLCzlDo0oYhVT+4mBwNuOWh4z919qniSK+8/AMZd+45XSrbxCwqfmwvIp6abfcW
	S6jWkT6FRFe+0V5nybbDsXNVI0FvMjBLdM/WqsRLbYB32LdOlEJcdmPC59o3S6UMzYhSffKHFzjcu
	9ypQP3Zf23jFLb5LM5nPiGlK6mTBNhQpsePJUS0iaSQeJqWaFKG1W06VTGB9UgUhp2ggxfG2PHZlZ
	97ruXOjZEtzUqWdJoLjm/oYN/EIuVKOpgXoHOFoNEME+Tx16vmISTLjVRG4gJEvymypbnWcn3wpzP
	wl9DCmPn5Hzm06ZhD66A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmvvY-0000Jk-Be; Mon, 15 Jul 2019 08:01:40 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmvvP-0008TO-Ab
 for linux-nvme@lists.infradead.org; Mon, 15 Jul 2019 08:01:32 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 13AEA68B05; Mon, 15 Jul 2019 10:01:26 +0200 (CEST)
Date: Mon, 15 Jul 2019 10:01:25 +0200
From: Christoph Hellwig <hch@lst.de>
To: Misha Nasledov <misha@nasledov.com>
Subject: Re: [PATCH] NVME: ignore subnqn for ADATA SX6000LNP
Message-ID: <20190715080125.GA31791@lst.de>
References: <20190715071149.GA24206@nasledov.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190715071149.GA24206@nasledov.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_010131_523353_06DB216C 
X-CRM114-Status: UNSURE (   5.42  )
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
Cc: sagi@grimberg.me, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, axboe@fb.com, kbusch@kernel.org, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Thanks,

applied to nvme-5.3 manually as our quirk list has growned vs whatever
tree you prepared it against.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
