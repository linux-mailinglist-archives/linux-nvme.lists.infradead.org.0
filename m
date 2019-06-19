Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF0A74BD29
	for <lists+linux-nvme@lfdr.de>; Wed, 19 Jun 2019 17:44:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RlSBhj6YxMrxkqRKaRnhsKdLUxVNjOxWEPvCfji3k48=; b=RTYJVxvGP0/hxel3rU6rcJ96q
	n3RQTqPpBhnYfQhmC8eVL4wYLkw5ID41+oPXq+6kDmRhK3f10nAupIlVUB4CFTMJSpD8cbR0QpmEW
	Q42veAxHhtqOUqNhMwtYUa0BDr/sRRipXobfy7dSItp7eWa64fpPmqnOVINEieTpkuxp5FvT0nBrv
	34xzCLnzoPGVZGCV4Mn/DQx6wqujKY0lq6tzkd6Qt7cn351FDT3BBVhWK4LF/tHUjIcqqUiv/pKqb
	9DPXpUqlbOtvH3K3dNMbraTcpIsjWFEDOkqReB/IKnqNt/BPesif5h0SJ2OwRb5h7HT43EV0RHfxo
	f5in39drw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdclW-0002OS-Am; Wed, 19 Jun 2019 15:44:50 +0000
Received: from mail-pf1-f195.google.com ([209.85.210.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdclR-0002Ml-4Y
 for linux-nvme@lists.infradead.org; Wed, 19 Jun 2019 15:44:46 +0000
Received: by mail-pf1-f195.google.com with SMTP id i189so9981525pfg.10
 for <linux-nvme@lists.infradead.org>; Wed, 19 Jun 2019 08:44:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ooMX3VCHw0lSSRut1UE7TyHgahxVxjlxjVzhKuqscLo=;
 b=BD79sfbJf81MQXU4c4olRf0GfHFVyLsw1AcL1hF9CNe+Z/S7kL3cBqOI9oLuF3ekDw
 2kUX7NhuPcdf7lfqVdBAiZ6J9nBT/rYVaPIRKbI8h1OOHJRItDIcuVWAjQDGZGIE7/br
 B91yxvFfUlj5BGO4Ecv2LogPqGswWeJq5TsPp+t4J/T5fdETWhqe7ULR3OB0LbBfCpzB
 gpUjVcKH/SFU0KAV8fUJSqZZ53sEvpzdfHpkABUPutylUmM0v3YjX0KO6A+fzOj6jUYx
 z8SkTMhixlxZl2jWTz5oaSX+BZ+/ZLwFaE9mEonwR1ciiFkL72nqmJ9Vzs5F2g1hCrYU
 KsfA==
X-Gm-Message-State: APjAAAV0sVq8xKGkGdvS8yYzlpsZ1vLYqi8geuNNhx0xgQfJShc5y/0o
 COYnDpSv477FHuhlQRzeUkf7NdXH
X-Google-Smtp-Source: APXvYqznrW58wGb8N7acQ7Bst2AbsWMLGcpbXSsfrc9p2rCMicH1k0F27V2c4OjDsC+jAaGw7qtRBw==
X-Received: by 2002:a17:90a:8c06:: with SMTP id
 a6mr12133064pjo.45.1560959084120; 
 Wed, 19 Jun 2019 08:44:44 -0700 (PDT)
Received: from desktop-bart.svl.corp.google.com
 ([2620:15c:2cd:202:4308:52a3:24b6:2c60])
 by smtp.gmail.com with ESMTPSA id l23sm20411161pgh.68.2019.06.19.08.44.42
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 08:44:43 -0700 (PDT)
Subject: Re: [PATCH v3 2/3] nvmet: Export NVMe namespace attributes
To: "Martin K. Petersen" <martin.petersen@oracle.com>
References: <20190617161222.253849-1-bvanassche@acm.org>
 <20190617161222.253849-3-bvanassche@acm.org> <yq1a7eeusa5.fsf@oracle.com>
From: Bart Van Assche <bvanassche@acm.org>
Message-ID: <68786de5-cdd8-c6d8-98a7-8a4310dac789@acm.org>
Date: Wed, 19 Jun 2019 08:44:41 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <yq1a7eeusa5.fsf@oracle.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_084445_183853_71F1CEBF 
X-CRM114-Status: GOOD (  15.62  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.195 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bart.vanassche[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.195 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Hannes Reinecke <hare@suse.com>, Sagi Grimberg <sagi@grimberg.me>,
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 linux-nvme@lists.infradead.org, Keith Busch <keith.busch@intel.com>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 6/18/19 9:13 PM, Martin K. Petersen wrote:
> 
> Bart,
> 
>> +	/*
>> +	 * Physical blocks per logical block, 0's based. Is it possible to
>> +	 * extract this information from the filesystem properties?
>> +	 */
>> +	const __le16 ppl0b = cpu_to_le16(0);
> 
> Maybe report the filesystem block size here?
> 
> Otherwise OK.
> 
> Reviewed-by: Martin K. Petersen <martin.petersen@oracle.com>

Hi Martin,

Thanks for the review.

Are you perhaps referring to the parameter that can be specified as 
command-line option -b to mkfs? I'm not sure that we should report that 
size as the physical block size since that parameter can be set to a 
value that is much larger than the physical block size of the storage 
medium (in the target system). I'd like to make sure that writes with a 
size of what is reported as physical block size are atomic because that 
is what filesystems (at the initiator side) expect.

Bart.


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
