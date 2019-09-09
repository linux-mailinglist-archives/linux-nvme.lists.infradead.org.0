Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FC95ADF79
	for <lists+linux-nvme@lfdr.de>; Mon,  9 Sep 2019 21:33:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d8ejLHQWjW5BHbAofexp6kMlHK4hsptBqog1IZKsyEE=; b=W5fF3CV56m9PYo
	wLNiYiEm+LkL0gQ573g0E4c7YCWak3fCoYKuRVvd8myk18jaA42s5u4xwJ0cZY6sRkAMJ/WyKQ5cv
	69eGRdhF9eridEQIP6eU7Gb7SaW2X5HprnF+XpBH82A9dAJ0JpGqXt4Ffm+VMAyTkefP8fla5Egk8
	Afi4it3UJD31lRb1HhIM20W/Rdes5qmEuryHysGzPubdtFRp99xlosnEV+2HtwYWkCYYki09yl4dS
	Izg4XvvaMYTQx4yIZLfFmuOjcvWAVx9bg2MeHom7XrHu9x6VD9DvJclX5zo9P0WbF2A6fY1vzNwm8
	/eF0JDS4hHSPIJKT6N9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7PPY-00083h-I9; Mon, 09 Sep 2019 19:33:16 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7PPS-000831-0G
 for linux-nvme@lists.infradead.org; Mon, 09 Sep 2019 19:33:11 +0000
Received: from guinness.priv.deltatee.com ([172.16.1.162])
 by ale.deltatee.com with esmtp (Exim 4.89)
 (envelope-from <logang@deltatee.com>)
 id 1i7PPJ-0001h7-5A; Mon, 09 Sep 2019 13:33:02 -0600
To: Sagi Grimberg <sagi@grimberg.me>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-block@vger.kernel.org,
 linux-fsdevel@vger.kernel.org
References: <20190828215429.4572-1-logang@deltatee.com>
 <20190828215429.4572-14-logang@deltatee.com>
 <92d61426-65a2-827c-936b-55f12f3d6afb@grimberg.me>
 <ca4ebcd9-fa5d-5ddf-c2a7-70318410dd97@deltatee.com>
 <7954e8a4-6026-2210-7192-94a4e483facf@grimberg.me>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <b23c72b2-c9db-cb8e-5519-63eb195b7fd4@deltatee.com>
Date: Mon, 9 Sep 2019 13:32:56 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <7954e8a4-6026-2210-7192-94a4e483facf@grimberg.me>
Content-Language: en-CA
X-SA-Exim-Connect-IP: 172.16.1.162
X-SA-Exim-Rcpt-To: hch@lst.de, maxg@mellanox.com, kbusch@kernel.org,
 axboe@fb.com, sbates@raithlin.com, Chaitanya.Kulkarni@wdc.com,
 linux-fsdevel@vger.kernel.org, linux-block@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-kernel@vger.kernel.org, sagi@grimberg.me
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH v8 13/13] nvmet-passthru: support block accounting
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_123310_088486_14FF2EA4 
X-CRM114-Status: GOOD (  12.92  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.54.116.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 Stephen Bates <sbates@raithlin.com>, Jens Axboe <axboe@fb.com>,
 Keith Busch <kbusch@kernel.org>, Max Gurtovoy <maxg@mellanox.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 2019-09-09 1:26 p.m., Sagi Grimberg wrote:
> 
>>>> Support block disk accounting by setting the RQF_IO_STAT flag
>>>> and gendisk in the request.
>>>>
>>>> After this change, IO counts will be reflected correctly in
>>>> /proc/diskstats for drives being used by passthru.
>>>>
>>>> Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
>>>> ---
>>>>    drivers/nvme/target/io-cmd-passthru.c | 5 ++++-
>>>>    1 file changed, 4 insertions(+), 1 deletion(-)
>>>>
>>>> diff --git a/drivers/nvme/target/io-cmd-passthru.c b/drivers/nvme/target/io-cmd-passthru.c
>>>> index 7557927a3451..63f12750a80d 100644
>>>> --- a/drivers/nvme/target/io-cmd-passthru.c
>>>> +++ b/drivers/nvme/target/io-cmd-passthru.c
>>>> @@ -410,6 +410,9 @@ static struct request *nvmet_passthru_blk_make_request(struct nvmet_req *req,
>>>>    	if (unlikely(IS_ERR(rq)))
>>>>    		return rq;
>>>>    
>>>> +	if (blk_queue_io_stat(q) && cmd->common.opcode != nvme_cmd_flush)
>>>> +		rq->rq_flags |= RQF_IO_STAT;
>>
>> Thanks for the review!
>>
>>> Does flush has data bytes in the request? Why the special casing?
>>
>> Well it was special cased in the vanilla blk account flow... But I think
>> it's required to be special cased so the IO and in_flight counts don't
>> count flushes (as they do not for regular block device traffic).
> 
> I think that the accounting exclude I/O that is yielded from the flush
> sequence. Don't think its relevant here...

What? Per blk_account_io_done(), RQF_FLUSH_SEQ will not be set by us for
passthru commands and I don't think it's appropriate to do so. Thus, if
we set RQF_IO_STAT for passthru flush commands, they will be counted
which we do not want.

Logan

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
