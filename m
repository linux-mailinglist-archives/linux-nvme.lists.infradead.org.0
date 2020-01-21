Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A65A0144490
	for <lists+linux-nvme@lfdr.de>; Tue, 21 Jan 2020 19:50:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gErzZyr6WSK/8T41zQuE5kMBU7WPlsokfAIqTLdTLrU=; b=iPocUdCb5fUK7dqu1g9VPEgIg
	EIs8gnzqkcsgK1Z0o1tepfg8O/D8DzkOXmIniQrRnqE13KgginNENAQZMHJtv4W6JTAcImF/vUS8p
	nF78alW/4C+cum56ODjQTANpFWTCu09UCO0ZTjeMnBcTXXqkmwMwsIqicTE6iRszX8r4dU8o2FVlB
	RWqVQkhII47E0h+h/+mqI329YoJgECK7JiTdr8G+XnXQLd5D4dkzD6p8bFf9cDhLG7CVhaGaE9Ttm
	wOKWpIJz0wiskfI0XicXXFDtA8RpvkNl8qE5uTe8LeFGHSvoM9NAFrab/pOZEUYbCKG/fUfDMytP4
	+Bn3n251A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ityb9-0005hb-IW; Tue, 21 Jan 2020 18:49:59 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ityb5-0005h8-7z
 for linux-nvme@lists.infradead.org; Tue, 21 Jan 2020 18:49:56 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Jan 2020 10:49:54 -0800
X-IronPort-AV: E=Sophos;i="5.70,346,1574150400"; d="scan'208";a="374680132"
Received: from unknown (HELO [10.232.112.49]) ([10.232.112.49])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 21 Jan 2020 10:49:53 -0800
Subject: Re: [PATCH] nvme: clear stale nvmeq->tags after tagset free
To: Keith Busch <kbusch@kernel.org>,
 "Nadolski, Edmund" <edmund.nadolski@intel.com>
References: <20200114181745.2297-1-edmund.nadolski@intel.com>
 <20200116160602.GA28993@redsun51.ssa.fujisawa.hgst.com>
 <0ff9ee57-0211-0170-7c58-a6c5d9354beb@intel.com>
 <20200116232619.GA29624@redsun51.ssa.fujisawa.hgst.com>
 <12dc944f-d28c-3946-3dcd-28c45c1d2892@intel.com>
 <20200121174235.GA4954@redsun51.ssa.fujisawa.hgst.com>
From: "Nadolski, Edmund" <edmund.nadolski@intel.com>
Message-ID: <0fd26a56-d57c-eeae-52b0-a80b64943bdb@intel.com>
Date: Tue, 21 Jan 2020 11:49:53 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <20200121174235.GA4954@redsun51.ssa.fujisawa.hgst.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_104955_341022_465661ED 
X-CRM114-Status: GOOD (  12.47  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.20 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 1/21/2020 10:42 AM, Keith Busch wrote:
> On Tue, Jan 21, 2020 at 10:32:22AM -0700, Nadolski, Edmund wrote:
>> The tagset pointer gets invalidated when the driver calls the following:
>> 
>> nvme_reset_work()
>>    +-> nvme_setup_io_queues()  <<< cmd fails, no io queues created
>>    +-> nvme_kill_queues()
>>    +-> nvme_remove_namespaces()
>>    |   +-> nvme_ns_remove()  <<< for each ctrl->namespaces
>>    |       +-> del_gendisk()
>>    |       +-> blk_cleanup_queue()
>>    |       |   +-> blk_mq_exit_queue()  <<< invalidates the tags
>>    |       |       +-> blk_mq_del_queue_tag_set()
>>    |       |       +-> blk_mq_exit_hw_queues()
>>    |       |           +-> blk_mq_exit_hctx()
>>    |       |               +-> set->ops->exit_hctx(...) <<< driver callback
>>    |       +-> nvme_put_ns()
>>    +-> nvme_free_tagset()
>>    |   +-> blk_mq_free_tagset()
>>    +-> nvme_start_ctrl()  <<< allow operation w/o namespaces
>> 
>> So the nvmeq->tags is already dead and stale by the time we get to
>> nvme_free_tagset.
> 
> No, nvmeq->tags is not stale until we call nvme_free_tagset().

I see this in blk/blk-mq.c:

2943 /* tags can _not_ be used after returning from blk_mq_exit_queue */
2944 void blk_mq_exit_queue(struct request_queue *q)

which ends up being called on every individual ctrl->namespaces entry.  What 
have I overlooked?

Thanks for clarifying,
Ed



_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
