Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04B757CBCE
	for <lists+linux-nvme@lfdr.de>; Wed, 31 Jul 2019 20:21:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0yr3tLcElYy5uy116zCAY5IjJIyvlM3b0+GO+vaKosE=; b=PvyXCgkxU9TRHFGOVcKrI6/pn
	ww3CgkBWuH/TOiGNmsOHqOy1LseGTx+iTqXl1/VtcQMnLp27lQJKzVmCadRwvFMIOvyTfGO65YQtF
	kk+6LUKaSzOLAMSU1lmidCYs0JYg6tezNJ1WbCrvnX16Bop/EhCkIIoc6F3UYp8KUYgNtJkk2wEtw
	+S4w316kUjhHEdqQtP+HPz5WFP6g9GbS7j/AfEDN2UqiWcbaS/zdHO/WUvouWUVBrg/qIJAMegUk1
	1SlwE8FchH6kPTH8zMThW7HKwojN8SmweG58IENyJ+VPqwaanbIUBqa21r5HsXl7M/DUzTlYx3MSY
	9tOdtmtwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hstEE-0008BW-Ch; Wed, 31 Jul 2019 18:21:34 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hstE8-0008BA-G9
 for linux-nvme@lists.infradead.org; Wed, 31 Jul 2019 18:21:29 +0000
Received: by mail-ot1-f67.google.com with SMTP id l15so13956804oth.7
 for <linux-nvme@lists.infradead.org>; Wed, 31 Jul 2019 11:21:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=d3Cv5sUj4/yccmm276CEKvoNp8fGBEODgkxJ1HOnasY=;
 b=nzhnV6ZdvZRPcW0BRS0abWrIkON6ZyRTY91tn8AKxl8QuTxsy9DgPHDNPGV5jmKYCW
 wmSzCRb8cSEc/bXkLgryKgMWlZyN/DdQ3I1Nq7pDlmEmEHFTirBpZ/eGjV/rfmKGci04
 A318I0CjeGEEaTL+H9owLZE1snFxmrOoVbkGa6n1kj0mxcwe7h5Cr/hbpHqEn1obCUFP
 YnH2AfdCR0najLP7HtWolTkYp1lcZBW44LuMxk2ficrSoW+RRPPGNTXnW90tZAQ2IClJ
 rjR6OlbpewJ52V+Vv9jV1Jc/LNRlzTu+ExbZgcYig7hesOaOX3HEEQ0vveY6LWhKF5M7
 gKxA==
X-Gm-Message-State: APjAAAVAeptp8/h9r6oq3Xo0XmZC3oJsjSChsyW+qZsbiQNY7IMCcFSf
 Fi3ZzL002GxpTHLVgrAeX3k=
X-Google-Smtp-Source: APXvYqweUZKPrhRVzSNxVBP2Lv7r+5R2P5O44riaCuU+xqKvavdDSr2wiOBu7W6z+hAmYGSHMD2gtw==
X-Received: by 2002:a05:6830:1009:: with SMTP id
 a9mr20627906otp.331.1564597286661; 
 Wed, 31 Jul 2019 11:21:26 -0700 (PDT)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id 132sm23052624oid.47.2019.07.31.11.21.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 31 Jul 2019 11:21:26 -0700 (PDT)
Subject: Re: [PATCH rfc 2/2] nvme: fix possible use-after-free condition when
 controller reset is racing namespace scanning
To: Hannes Reinecke <hare@suse.de>, linux-nvme@lists.infradead.org
References: <20190729233201.27993-1-sagi@grimberg.me>
 <20190729233201.27993-3-sagi@grimberg.me>
 <e3b0f11f-a66f-9b1a-6790-89efcaa33140@suse.de>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <fb6c9d38-32f6-a659-f3b9-1c57f28b410d@grimberg.me>
Date: Wed, 31 Jul 2019 11:21:21 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <e3b0f11f-a66f-9b1a-6790-89efcaa33140@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_112128_539362_C8616348 
X-CRM114-Status: GOOD (  15.73  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
>> index 5f6970e7ba73..9f8f8f5feeae 100644
>> --- a/drivers/nvme/host/core.c
>> +++ b/drivers/nvme/host/core.c
>> @@ -3406,6 +3406,11 @@ static void nvme_ns_remove(struct nvme_ns *ns)
>>   	synchronize_rcu(); /* guarantee not available in head->list */
>>   	nvme_mpath_clear_current_path(ns);
>>   	synchronize_srcu(&ns->head->srcu); /* wait for concurrent submissions */
>> +	nvme_mpath_check_last_path(ns);
>> +
>> +	down_write(&ns->ctrl->namespaces_rwsem);
>> +	list_del_init(&ns->list);
>> +	up_write(&ns->ctrl->namespaces_rwsem);
>>   
>>   	if (ns->disk && ns->disk->flags & GENHD_FL_UP) {
>>   		del_gendisk(ns->disk);
>> @@ -3414,11 +3419,6 @@ static void nvme_ns_remove(struct nvme_ns *ns)
>>   			blk_integrity_unregister(ns->disk);
>>   	}
>>   
>> -	down_write(&ns->ctrl->namespaces_rwsem);
>> -	list_del_init(&ns->list);
>> -	up_write(&ns->ctrl->namespaces_rwsem);
>> -
>> -	nvme_mpath_check_last_path(ns);
>>   	nvme_put_ns(ns);
>>   }
>>   
>>
> How does this one play with nvme_stop_queues()/nvme_start_queues() we're
> doing during reset?
> IE what happens if this is called after nvme_stop_queues(), but before
> nvme_start_queues()?
> We'll end up having a stopped queue when deleting the disk; from what
> I've seen blk_cleanup_queue() will just freeze the queue and wait for
> I/O to complete, which it'll never will as the queue is stopped ...

nvme_stop/start_queue are quiescing the queue, not freezing it which
does not block requests in blk_queue_enter.
So I don't think that blk_cleanup_queue will hang for unquiesced queues.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
