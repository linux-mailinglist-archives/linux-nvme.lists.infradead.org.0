Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E7BD86DDA
	for <lists+linux-nvme@lfdr.de>; Fri,  9 Aug 2019 01:22:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TPoqqUWDSxPvaR59eyhvOQc6r8gsu+oMBhMneX9T/4g=; b=c7Q68S9d7Io33Wm8olw1uswKt
	DDt5dC/mc9Vg8muhQ7qWDXgrNPQzmtc1QA/WQUWnAksum1rRHB+G+pnD0mPjo3HI4aaBdazjoSEoJ
	v9PuN/WYYcUoyE58/9ju6qHqnwfIuJEr0HM7s28MFkiiABKK6UruANEHaCIlS8x0TtJnhP/XCzsvG
	+NRFLKz3dR2fiLvLoEaAKo3OrXa5RkMlLob2dWfLGTr5bAT3aaGaZMDhCwuMp4QF4SGuhk6bNQmPY
	VyrqBXmHVmHWUPbMYksJuhwYkQEqCj/JpVfnORhtR6UavTK1b3ZhQShRY173df0JMBoLoHK2F97uW
	vokJrlpMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvrjz-0007fw-TH; Thu, 08 Aug 2019 23:22:40 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvrjv-0007eV-1q
 for linux-nvme@lists.infradead.org; Thu, 08 Aug 2019 23:22:35 +0000
Received: by mail-ot1-f68.google.com with SMTP id b7so75344665otl.11
 for <linux-nvme@lists.infradead.org>; Thu, 08 Aug 2019 16:22:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=JJBJE9eL1uf47A5OO+0AOCEydzCcMyJZDoqWv+FsHqY=;
 b=cPxwd8uxJsgkXCcOUjI5m2MozGXfvLbDXfcN66Q13M96QRxM57cN1cjil1nncLGx7A
 3ebt6xzeFTZNUXCwtAjZiQtFGA7XCMAIbGzAGtvu2kDVVxENwdUrVnKbsXzxZmeTl0sq
 gHDB5pBaMAhFtKIyJc6vM3jDbnfT4v8djZobvEJkyTJKc5nZ4EzLGuJQWMzVir+OtGgt
 3GljBkw66ADLZm+tgvOPkNgNNyIAF81yG6Vlwm//mihuN6ZBRqUfznCpQeQrRuXQBPRm
 lnREccQe4I4JKDIhlAJyTekvNftnJIhoyheM1z+pCTMswXr+UneHSSHix3PCjOhNwm96
 7K7A==
X-Gm-Message-State: APjAAAX5RdJ3YMbcRpC7Sg8AzREA9w3qtRbOdnIT0zBMv+/OrmC/+UvZ
 nv4l2lY9fYxOSY7dDCGSiMg=
X-Google-Smtp-Source: APXvYqwhewuQzvK0g1CnmsZQuyWNHJL7l2+C9EcxY9Y6i1cmf2wzcQ38gnav2L3Tf7NmzzkRwHYprA==
X-Received: by 2002:a9d:738b:: with SMTP id j11mr15594271otk.185.1565306553396; 
 Thu, 08 Aug 2019 16:22:33 -0700 (PDT)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id f125sm32219862oia.44.2019.08.08.16.22.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 08 Aug 2019 16:22:32 -0700 (PDT)
Subject: Re: [PATCH v3 3/7] nvme: make nvme_identify_ns propagate errors back
To: Keith Busch <kbusch@kernel.org>
References: <20190808205325.24036-1-sagi@grimberg.me>
 <20190808205325.24036-4-sagi@grimberg.me>
 <20190808211839.GA27519@localhost.localdomain>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <bb1dd49b-eb3c-1e83-a635-ee558299fe41@grimberg.me>
Date: Thu, 8 Aug 2019 16:22:28 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190808211839.GA27519@localhost.localdomain>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_162235_094039_5359A522 
X-CRM114-Status: GOOD (  18.00  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Keith Busch <keith.busch@intel.com>, James Smart <james.smart@broadcom.com>,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 Hannes Reinecke <hare@suse.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> right now callers of nvme_identify_ns only know that it failed,
>> but don't know why. Make nvme_identify_ns propagate the error back.
>>
>> Reviewed-by: Minwoo Im <minwoo.im.dev@gmail.com>
>> Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
>> ---
>>   drivers/nvme/host/core.c | 12 ++++++------
>>   1 file changed, 6 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
>> index f435c85c4062..e503fd14de81 100644
>> --- a/drivers/nvme/host/core.c
>> +++ b/drivers/nvme/host/core.c
>> @@ -1108,13 +1108,13 @@ static struct nvme_id_ns *nvme_identify_ns(struct nvme_ctrl *ctrl,
>>   
>>   	id = kmalloc(sizeof(*id), GFP_KERNEL);
>>   	if (!id)
>> -		return NULL;
>> +		return ERR_PTR(-ENOMEM);
>>   
>>   	error = nvme_submit_sync_cmd(ctrl->admin_q, &c, id, sizeof(*id));
>>   	if (error) {
>>   		dev_warn(ctrl->device, "Identify namespace failed (%d)\n", error);
>>   		kfree(id);
>> -		return NULL;
>> +		return ERR_PTR(error);
> 
> The previous patch has nvme_submit_sync_cmd() return a BLK_STS_* value in
> some cases, but ERR_PTR requires -errno's in order for IS_ERR to detect
> errors. I think you need:
> 
> 		if (error > 0)
> 			return ERR_PTR(blk_status_to_errno(error));
> 		else
> 			return ERR_PTR(error);
> 

You are right. sending a respin soon

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
