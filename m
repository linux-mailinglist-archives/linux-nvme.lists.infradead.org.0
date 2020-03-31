Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05615199B92
	for <lists+linux-nvme@lfdr.de>; Tue, 31 Mar 2020 18:30:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4GByTy1nvCN1GiMb7fkOvXXjeaw4GRqv1MFAm7Kg3Wg=; b=qTi9HVuJyGmm4u
	Fh9JTd8oUZq2JLmvZx8Z0VD+NzAethXa/E05CfFIZi++hgIjG95ZiUqe14ZVb+S4Wb0ai6+ph8lCE
	AtQfkZ/mHtF5yGrqArM0Zw16ibds2Ip9W0V1qLQNh8Klag3FsvuuY6jcmxaNFyLrqiGWmuuDVVsBo
	BXo3Lighkjo1sKFwbFQxUwA/x1OQ0sbmKCvs3/kYkhPjvxy3HEWK0HSwPzSl5ObR7zoVuBQygYTDU
	sLXT00lg8N087lLLIc2vp4tb89u+DD+9/WV6jhjA7gZTBtpLqfUFIGhfoRm1bAv5ryGEbCPY2CkUU
	d0EmwYuXd9KgQxjDHXnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJJme-0004Cc-O0; Tue, 31 Mar 2020 16:30:36 +0000
Received: from merlin.infradead.org ([205.233.59.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJJly-0001Vo-Sf
 for linux-nvme@bombadil.infradead.org; Tue, 31 Mar 2020 16:29:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=SKjKjglOdMnZPOrtuAe8O3llPBojIrALyuGOXq6aFDA=; b=DaNnHIMfWKnidKQjBFPhMfEmuG
 i1z5A/tLFOFa39Z43iMHa16SkIi6UcWaKA+e5r01MbIL2i9sLe/bDN9RPENY8Ro6KnxcNW7lT1AyE
 6qjdpkEQXt45yh8zClZReejTxLlVBy3b2Sx7vAftxBc7M12ArZZ5j7IiCH+Q4iClIgnWt5KvmelUM
 XM6ki5BPyLIKA4QaD2d+5OGCIUemk4U+uNrhHnKXEOAwPBWQjtG/2Ce/KVruPvu6y4FcmC+eFMQvH
 obB0j+1ZDq4iOjt4IP2k3l3IhsEIbwDAa2CUNO4qrONxfyJPNqpIm+3K1f/gyYIDK6Se2GlaIyocY
 Nw0KIGTg==;
Received: from verein.lst.de ([213.95.11.211])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJITG-0004um-Tw
 for linux-nvme@lists.infradead.org; Tue, 31 Mar 2020 15:06:31 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 0F0EF68BFE; Tue, 31 Mar 2020 17:06:27 +0200 (CEST)
Date: Tue, 31 Mar 2020 17:06:26 +0200
From: Christoph Hellwig <hch@lst.de>
To: Max Gurtovoy <maxg@mellanox.com>
Subject: Re: [PATCH v4 1/1] nvmet-rdma: use SRQ per completion vector
Message-ID: <20200331150626.GA20691@lst.de>
References: <20200326181512.58053-1-maxg@mellanox.com>
 <80ff5951-caad-1130-43d4-6239b9f6a143@grimberg.me>
 <6149129e-eacb-7b16-0540-13166dc10e8e@mellanox.com>
 <9ce666b9-d4c1-ecff-36e3-d20ea8e3fe0e@mellanox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9ce666b9-d4c1-ecff-36e3-d20ea8e3fe0e@mellanox.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on merlin.infradead.org summary:
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
Cc: Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org,
 shlomin@mellanox.com, jgg@mellanox.com, kbusch@kernel.org, hch@lst.de,
 bvanassche@acm.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Mar 31, 2020 at 05:43:11PM +0300, Max Gurtovoy wrote:
> Hi Sagi/Christoph,
>
>>
>>
>>>
>>> Other than that, looks good Max,
>>>
>>> Reviewed-by: Sagi Grimberg <sagi@grimberg.me>
>>
> Can this be merged to 5.7 and we'll progress merging T10 support to 5.8 ?

This doesn't look like a bug fix to me, so I plan to queue it up for
5.8.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
