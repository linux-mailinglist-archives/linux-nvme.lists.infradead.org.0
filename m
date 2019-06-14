Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 367C0465FE
	for <lists+linux-nvme@lfdr.de>; Fri, 14 Jun 2019 19:44:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BM4MkRKvzVnkPwL1X32NJhMWyMt5RtqzOkYYL/YzHPo=; b=uwqxG47TdNBbFl
	NifHHxulTeBtstQBHS6GmYCZxJLPra49s3mJJq+Gr8diJ9gxOFIVqGFG3YfcWlNoNjwr5T3Fh7kpK
	JMEhe5VMX7qgWJB3YJNk8q+7oxEy/+UcDWnpnc5LEgsmHBdPHAko9tyERFztuXJpjuXOBpGP9+OxZ
	yJ58EhTv/i0RCa1mWrAfHm0lpfDeyRxWXjwe9df3A3WQc7fPioF9kqCYvhgU/J2P05+d0We+/9fP5
	Hq1epMZF2nK6f2Liji0bX7/90I9fb9nfxTy6nre2EgcjuCV4wHyZfPeoExYJnGDomhSyjdPubazvd
	L64DoOCqa3Ye1NEcnZ3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbqFJ-0004F6-Au; Fri, 14 Jun 2019 17:44:13 +0000
Received: from mail-pg1-f194.google.com ([209.85.215.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbqEX-0003iv-VF
 for linux-nvme@lists.infradead.org; Fri, 14 Jun 2019 17:43:33 +0000
Received: by mail-pg1-f194.google.com with SMTP id s27so1955974pgl.2
 for <linux-nvme@lists.infradead.org>; Fri, 14 Jun 2019 10:43:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=LMIyXjBW/gOVFVSOxddC2tUhzuhHenAJroi6k7PAxYI=;
 b=QEf2QDLQl0zlmjfcEjuheV7+YNAgM13Lg5V+5VYQMM0hOfMN+J3bZOMMY+iRPJ7WDB
 6Zdn4laMWw69MxdxU8Qs0Z9eCZ2zYLLczmKqHh46CzFNVQDvN652IoeXyJaDaZ9OJYR6
 Xj0jrQVuoh6hAajOpEs9frM5igmuEHY6ZyHpNBm2cI8dyQ7Q/9nTYc8qV63zfQZblRHN
 FdwUalq5LdYfQ4zV8LxRpY7+HjG5Ka3XZv1k2vHSxj9niFJv7pGfA4Z3blONq5wA8vs2
 40vCO395z/skGPnR6eofuTsu+l2jNcvVEvQ09dHPdWqf9EWco8ejkEa0+picr1tok/5p
 NbVQ==
X-Gm-Message-State: APjAAAVCgZBtbKC3tmIefEhVZhOeUMDt+7hcH1FlAcvU+S6dibZ/1oee
 TlRgiZ/9XVmqUBuMKhzg/qo=
X-Google-Smtp-Source: APXvYqx4zNtLJrtMv9ECTDJGzy4Tsgg6ZCxnB+CZtgDPXJ1Bi03JexgB21Ybk/aVgXrdKkcClNciuQ==
X-Received: by 2002:a17:90a:5d15:: with SMTP id
 s21mr12185795pji.125.1560534203704; 
 Fri, 14 Jun 2019 10:43:23 -0700 (PDT)
Received: from ?IPv6:2620:15c:2c0:5:2d74:bb8d:dd9b:a53e?
 ([2620:15c:2c0:5:2d74:bb8d:dd9b:a53e])
 by smtp.gmail.com with ESMTPSA id j23sm5119174pgb.63.2019.06.14.10.43.21
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Fri, 14 Jun 2019 10:43:22 -0700 (PDT)
Subject: Re: [PATCH v2 2/3] nvmet: Export NVMe namespace attributes
To: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 Christoph Hellwig <hch@lst.de>
References: <20190610210612.103952-1-bvanassche@acm.org>
 <20190610210612.103952-3-bvanassche@acm.org>
 <BYAPR04MB5749D68053F5CAF2456E17FC86EE0@BYAPR04MB5749.namprd04.prod.outlook.com>
 <4a104091-5ef2-ee3b-9653-cbb816b39a2e@acm.org>
 <BYAPR04MB57499B4C1225252183F01ADC86EE0@BYAPR04MB5749.namprd04.prod.outlook.com>
From: Bart Van Assche <bvanassche@acm.org>
Message-ID: <a296a5c7-33f0-a1a6-07ec-f64dd8006693@acm.org>
Date: Fri, 14 Jun 2019 10:43:21 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <BYAPR04MB57499B4C1225252183F01ADC86EE0@BYAPR04MB5749.namprd04.prod.outlook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_104326_093419_255B9339 
X-CRM114-Status: GOOD (  21.68  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.194 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.194 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bart.vanassche[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Keith Busch <keith.busch@intel.com>, Keith Busch <kbusch@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 6/14/19 10:18 AM, Chaitanya Kulkarni wrote:
>>>> +	id->nsfeat |= 1 << 1;
>>>> +	id->nawun = ppl0b;
>>>> +	id->nawupf = ppl0b;
>>>> +	id->nacwu = ppl0b;
>>> The above 4 assignments are similar to the assignments present in the
>>> nvmet_file_set_limits() ? If so is it make sense to have a helper to
>>> reduce the code duplication ?
>> I don't think that that is a good idea.
> 
> It will be great learning experience for me if you can educate me about
> why this
> 
> is not a good idea, can you please explain  ?
> 
> The rational behind asking for an explanation is that I've got a comment
> on my code
> 
> about not having same copy of the code in the kernel which is right.
> 
> The situation is same here where this code is operating on same
> structure doing the
> 
> same thing across file io-cmd-bdev.c and io-cmd-file.c.
> 
> 
> My understanding is that if this patch gets applied then we will have
> same copy of two
> 
> assignments in the target which are exactly doing the same thing which
> calls for a nice
> 
> little helper function.

Hi Chaitanya,

There is no hard rule that code duplication should be avoided at any
price in the Linux kernel. For this patch I will leave it to the NVMe
maintainers to decide whether or not they want to move these assignments
into a helper function.

Regarding req_op_str(): I had never seen it before if the same
functionality is needed in two different source files in the same
subsystem that code got copy/pasted instead of calling a single function
from all code that needs the functionality. I had asked to avoid to
duplicate req_op_str() because of the following reasons:
- If a new request operation would be added having one req_op_str()
implementation is more convenient than having multiple.
- An operation like conversion from a request operation into a string
should not happen inside f2fs. f2fs should call a block layer function
to do that conversion.

Bart.


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
