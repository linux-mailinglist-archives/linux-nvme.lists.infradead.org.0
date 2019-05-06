Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB63314F1E
	for <lists+linux-nvme@lfdr.de>; Mon,  6 May 2019 17:08:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=y9AL/fsVjMX0cWc+bsoQuVpdqv3WhYOrHtVyKW1LYBw=; b=QfgUs8ZHefbFeYiu55+UzJrFD
	awJDuyNw00RMu2PmJyiC+5hrRWhG7bBqrQ2TvcLDAh6rnA27ZtB0RQaFxr+O49U72aFfY1XG6ynxO
	afiqpxGRXRQ479u6UyOjFuTDDyQVI+S2reK/1Jd9OM3j5j0ChbEAGFFIYachcVsN7UFLrSAAN3fHz
	QueyRuUskNLoimZcmvbgINZVBbZZ39NqnyDVN110STw69cnisPXQzpgOoY36ndB/3kacHNPsjG5wz
	iCPrBxlOXMDTnsocb9nFqKKcnK35NdoMFCW1KzSpkBzLif0+Vu626xlZuxnbpe2Ayz+wcsh6jdgmH
	3VdZHDUzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNfDi-0007pS-TY; Mon, 06 May 2019 15:07:58 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNfDd-0007oC-5c
 for linux-nvme@lists.infradead.org; Mon, 06 May 2019 15:07:54 +0000
Received: by mail-pf1-x444.google.com with SMTP id e24so6915919pfi.12
 for <linux-nvme@lists.infradead.org>; Mon, 06 May 2019 08:07:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=OZsBFeyihjzAGBBv1paPvvp/I4Ff7h1OZ3w3O5c2uq4=;
 b=FwngjfVL3BOi475ZFK2HOYhqqmv3WQqaDrIqKJ6G6qfB/NJttxyfnjV/bGASRgADLL
 yUgK7Bz5rd4v9GlRA15iZT+HC36kr4BN7Brb55bohJHMI8Q3mYDpeykYmBUxP/5VTw5j
 LQnWqL87iCFTxMMeWV3jWzgxQoi+OSSwDbyr0wacDXD//NRWcN/kWHMQW2WbSMJiB/7Y
 vRQwv5J5+KjmOC1IvKjcDpgaK0zpMOkSmu8G9EXH0ZO8AcGSlrvVM5ZCKYQNb8jjla4J
 Hoz+3S0GCR8IS7voWaWkv8tp9ggC/91DApWMngJde4r6nG/iiHdFmOUEEv3Y2RPnvC2U
 GCWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=OZsBFeyihjzAGBBv1paPvvp/I4Ff7h1OZ3w3O5c2uq4=;
 b=nmpRUnN82Er1RbqLyFc6JL2Pqt84RticOdO1Sq0YeeYwuJs2poHw2VOy0cqnyqDdin
 f+HmAPXASDw4qDcf+pkJZtvOCq+UKFoz0tUX3/jlrS6sARmhJPqSIpTW1QMbkzozxWbK
 HSB1XEzrnUmVuh1VaMy9gmy8lqKj4mtVRSpoEiiDcsFXf1mFnaSwlIu5/n/bFYQk2nk3
 2kfraLfItWptL+dKKnF68Cwr7RlKv3g81Jm6kgvrSYF5IzCuas7QYtLUuif0HcebZ/tc
 BthYHM7BESHJKgPOYzx1ygc0kGS/WgwVimAvuEC0IVmyvplp0pfhkho+E0rYh+G4iOSo
 ePSA==
X-Gm-Message-State: APjAAAUSvtrYCdTOSBiaTu1C0pM5L9EZ4BhUjrcmIzVrnkUx3HhRBj/S
 tJ366reNctTmyIJtePO4lsU=
X-Google-Smtp-Source: APXvYqxM75Wq8HaxKqmvu02Vy5Rdx0Y0UIKW+lVtCWKpJ88iUyCp6bwKBP7S4do8Sn1YPJKGGTsM7A==
X-Received: by 2002:aa7:8284:: with SMTP id s4mr29819592pfm.235.1557155272107; 
 Mon, 06 May 2019 08:07:52 -0700 (PDT)
Received: from [192.168.0.6] ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id v14sm13689609pfm.95.2019.05.06.08.07.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 06 May 2019 08:07:50 -0700 (PDT)
Subject: Re: [PATCH] nvme-loop: Fix race between completions and shutdown
To: Keith Busch <kbusch@kernel.org>
References: <20190506145203.2851-1-minwoo.im.dev@gmail.com>
 <20190506145327.GA2164@localhost.localdomain>
From: Minwoo Im <minwoo.im.dev@gmail.com>
Message-ID: <0db7e312-0ff2-45f2-8ee1-7ad7b6fd3e5a@gmail.com>
Date: Tue, 7 May 2019 00:07:47 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190506145327.GA2164@localhost.localdomain>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_080753_220077_2FFC7ED8 
X-CRM114-Status: GOOD (  15.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Minwoo Im <minwoo.im@samsung.com>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 5/6/19 11:53 PM, Keith Busch wrote:
> On Mon, May 06, 2019 at 11:52:03PM +0900, Minwoo Im wrote:
>>   static void nvme_loop_shutdown_ctrl(struct nvme_loop_ctrl *ctrl)
>>   {
>>   	if (ctrl->ctrl.queue_count > 1) {
>> +		nvme_start_freeze(&ctrl->ctrl);
>> +		nvme_wait_freeze(&ctrl->ctrl);
>> +
>>   		nvme_stop_queues(&ctrl->ctrl);
>>   		blk_mq_tagset_busy_iter(&ctrl->tag_set,
>>   					nvme_cancel_request, &ctrl->ctrl);
>>   		nvme_loop_destroy_io_queues(ctrl);
>> +
>> +		nvme_unfreeze(&ctrl->ctrl);
>>   	}
> 
> nvme_stop_queues() and blk_mq_tagset_busy_iter() really don't make sense
> to call on frozen queues.
> 

Hi Keith,
Thanks for your reply on this.

Actually the OOPS has occurred because blk_mq_tagset_busy_iter() 
iterates over a request which is now being completed by other CPU.

If don't mind, can I ask how can blk_mq_tagset_busy_iter() make sure 
that no more requests are coming into this request_queue during this 
iteration ?

Thanks,

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
