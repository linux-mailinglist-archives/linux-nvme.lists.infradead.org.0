Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00FA828149
	for <lists+linux-nvme@lfdr.de>; Thu, 23 May 2019 17:34:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yOBhcwRCJMrtYk9OqUEk+dRr58S5UPyl8E3QnHeA1PU=; b=BSSnw3YqrHAQx5
	2EM/rfEugSYQCaVK0Ndqi51jakuEKnGby6+Re07Rw6oHm1miaot63nO+duwBejcVm1bZRHi4MBl7h
	EjiFd6OTtKX/f7SN4EGkMkU7hNPFceqpNQO0EPzB/FPYfWxENcJhtJqqHaHt0k7lYQ3xHo2/jjKsz
	UB6hEHqPk5YOolnqUl9zwFANMAAhaXbMPGHH86TMFmVV92hkp6tsUCzvWgatqVLX+jviohWQAXH40
	6zCFrno3JLoKaW6yXNSmeRkqNvwFJGoezBkELHux3IRiVRha79cJW/gBJkDZ1rDQ5Ry3JPnV7hDU2
	x96Xop3mGJg5jN6LRLeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTpj6-0008O1-KZ; Thu, 23 May 2019 15:33:52 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTpj0-0008MI-DA
 for linux-nvme@lists.infradead.org; Thu, 23 May 2019 15:33:48 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 4A47568AFE; Thu, 23 May 2019 17:33:23 +0200 (CEST)
Date: Thu, 23 May 2019 17:33:23 +0200
From: Christoph Hellwig <hch@lst.de>
To: Max Gurtovoy <maxg@mellanox.com>
Subject: Re: [PATCH 1/1] nvme-rdma: Add association between ctrl and
 transport dev
Message-ID: <20190523153323.GA21083@lst.de>
References: <1558444796-5190-1-git-send-email-maxg@mellanox.com>
 <20190523102236.GC15492@lst.de>
 <264c1ab2-a097-3384-381f-2b8c56c4442c@mellanox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <264c1ab2-a097-3384-381f-2b8c56c4442c@mellanox.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_083346_592672_530E4943 
X-CRM114-Status: UNSURE (   8.33  )
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
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: shlomin@mellanox.com, israelr@mellanox.com, Christoph Hellwig <hch@lst.de>,
 linux-nvme@lists.infradead.org, sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, May 23, 2019 at 02:05:23PM +0300, Max Gurtovoy wrote:
>
> On 5/23/2019 1:22 PM, Christoph Hellwig wrote:
>>> +static void nvme_rdma_ctrl_dev_put(struct nvme_rdma_ctrl *ctrl,
>>> +				   struct nvme_rdma_device *dev)
>>> +{
>>> +	ctrl->device = 	NULL;
>> double whitespace here.
> thanks.
>>
>>> +	kref_put(&dev->ref, nvme_rdma_free_dev);
>>> +}
>>> +
>>> +static void nvme_rdma_ctrl_dev_get(struct nvme_rdma_ctrl *ctrl,
>>> +				   struct nvme_rdma_device *dev)
>>> +{
>>> +	kref_get(&dev->ref);
>>> +	ctrl->device = dev;
>> Why aren't these using nvme_rdma_dev_put / nvme_rdma_dev_get?
>
> Since we change the ctrl->device pointer here.
>
> Do you prefer doing it without helper ?

We can still use the helper underneath instead of open coding the kref
calls, right?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
