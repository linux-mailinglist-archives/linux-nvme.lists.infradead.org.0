Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46AD7AE16D
	for <lists+linux-nvme@lfdr.de>; Tue, 10 Sep 2019 01:15:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bT4M44C5yW3k4Jd4YGVbWlK0Wwt0TOKtc/DexIpj/iQ=; b=di5klU0Gku6mMWKV4SQqNRIg4
	0k1V0YCSAEpr/L0S+vl7v6nCIuwdOK1V1OaVJ9w/jsbvwFMZV609M2uEF0pCgITpTxoyd3xaCM034
	T9l9lgJfFwTFVLCRoxLEv9y2ZcXZzqcdJTMQEx4LrNZvHmAke667KzPkD/2q1NZV+wT57xsgGWgL2
	aOZ6Ur31dfz++rr1+aYnjJtXQCQS73nSYrEvZkF4KtAaSfqcQ807N5+kAHagvF3leVWTTmWppawPb
	8s3NoOuw/6TQmh9BywKYBPbEH2Io4s8odVXfcNEuh6Bp89C94VTNYqIhFjIKgj/fFFQEPzvv+T+FA
	ODjzWbhgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7Ssh-0003Lj-DD; Mon, 09 Sep 2019 23:15:35 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7Ssb-0003Kp-EN
 for linux-nvme@lists.infradead.org; Mon, 09 Sep 2019 23:15:31 +0000
Received: by mail-ot1-f65.google.com with SMTP id h17so11357404otn.5
 for <linux-nvme@lists.infradead.org>; Mon, 09 Sep 2019 16:15:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=76+B0F+y6GF7x1pmO705M0ab149/3jefLlEAKzhXfdY=;
 b=fk/IKVZeIMPgOVzbBnQ4GI7rW3iNQvR8DtBzXtTogCpPk3sv76LO6FroQO6pmo+nKQ
 naLRT1x+kH1M67+xHpunfe2I8U3+ylL4WbaoPmKoN0FqvfygtKEIhcuOuG4JY4TCBDR0
 RUQZbokNVOCKEcq8WzQDgDifeRgliHzBq/zJL1zPvQA5y37gpMBC2OD00xCkR/gIgb6L
 7p2MhjZzZ8oTT+UobIlUvGeVs0z4g28FHaJSIX2kYVwewZ2KmxRP6iFXbA/xnVKsUi8o
 WGzLmvAD9ew2/VGRA9GkrIqheBTiHGE8Wvcxz8dqAh/wmArzaWWIHEkE+U1TfPkUj2Zd
 KXmg==
X-Gm-Message-State: APjAAAVf99ZPn7/pqQZYoJxIVXfk78K3HhgaPbO7duGODZ5PTGANiEq5
 bofOWzlpKGCDIqe4N+MzNkQ=
X-Google-Smtp-Source: APXvYqw8MteVMDy0Cl8ZOyqZEdlruprk+5eF7K1KC+eC19R7iANjgOvPKaYiMx6uYRtoPSCqFx1Cbw==
X-Received: by 2002:a9d:4815:: with SMTP id c21mr18066036otf.26.1568070928432; 
 Mon, 09 Sep 2019 16:15:28 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id l30sm6462344otl.74.2019.09.09.16.15.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 09 Sep 2019 16:15:27 -0700 (PDT)
Subject: Re: [PATCH v8 13/13] nvmet-passthru: support block accounting
To: Logan Gunthorpe <logang@deltatee.com>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-block@vger.kernel.org,
 linux-fsdevel@vger.kernel.org
References: <20190828215429.4572-1-logang@deltatee.com>
 <20190828215429.4572-14-logang@deltatee.com>
 <92d61426-65a2-827c-936b-55f12f3d6afb@grimberg.me>
 <ca4ebcd9-fa5d-5ddf-c2a7-70318410dd97@deltatee.com>
 <7954e8a4-6026-2210-7192-94a4e483facf@grimberg.me>
 <b23c72b2-c9db-cb8e-5519-63eb195b7fd4@deltatee.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <ca811aea-c4ae-10ee-15a5-2332d5a9e29a@grimberg.me>
Date: Mon, 9 Sep 2019 16:15:25 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <b23c72b2-c9db-cb8e-5519-63eb195b7fd4@deltatee.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_161529_478140_F8B03F03 
X-CRM114-Status: GOOD (  15.31  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 Stephen Bates <sbates@raithlin.com>, Jens Axboe <axboe@fb.com>,
 Keith Busch <kbusch@kernel.org>, Max Gurtovoy <maxg@mellanox.com>,
 Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>>>>> Support block disk accounting by setting the RQF_IO_STAT flag
>>>>> and gendisk in the request.
>>>>>
>>>>> After this change, IO counts will be reflected correctly in
>>>>> /proc/diskstats for drives being used by passthru.
>>>>>
>>>>> Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
>>>>> ---
>>>>>     drivers/nvme/target/io-cmd-passthru.c | 5 ++++-
>>>>>     1 file changed, 4 insertions(+), 1 deletion(-)
>>>>>
>>>>> diff --git a/drivers/nvme/target/io-cmd-passthru.c b/drivers/nvme/target/io-cmd-passthru.c
>>>>> index 7557927a3451..63f12750a80d 100644
>>>>> --- a/drivers/nvme/target/io-cmd-passthru.c
>>>>> +++ b/drivers/nvme/target/io-cmd-passthru.c
>>>>> @@ -410,6 +410,9 @@ static struct request *nvmet_passthru_blk_make_request(struct nvmet_req *req,
>>>>>     	if (unlikely(IS_ERR(rq)))
>>>>>     		return rq;
>>>>>     
>>>>> +	if (blk_queue_io_stat(q) && cmd->common.opcode != nvme_cmd_flush)
>>>>> +		rq->rq_flags |= RQF_IO_STAT;
>>>
>>> Thanks for the review!
>>>
>>>> Does flush has data bytes in the request? Why the special casing?
>>>
>>> Well it was special cased in the vanilla blk account flow... But I think
>>> it's required to be special cased so the IO and in_flight counts don't
>>> count flushes (as they do not for regular block device traffic).
>>
>> I think that the accounting exclude I/O that is yielded from the flush
>> sequence. Don't think its relevant here...
> 
> What? Per blk_account_io_done(), RQF_FLUSH_SEQ will not be set by us for
> passthru commands and I don't think it's appropriate to do so. Thus, if
> we set RQF_IO_STAT for passthru flush commands, they will be counted
> which we do not want.

Have you considered to have nvmet_passthru_blk_make_request set RQF_FUA
for nvme_cmd_flush? this way blk_insert_flush will be called and
RQF_FLUSH_SEQ will be set and you don't need to worry about this
special casing...

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
