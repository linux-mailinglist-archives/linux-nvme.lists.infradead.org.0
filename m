Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 121057CF03
	for <lists+linux-nvme@lfdr.de>; Wed, 31 Jul 2019 22:45:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RdUyN0LTW1V4l7P/6bLJ5Jr0Agx8YZVT86B4pVPNBvQ=; b=np357X2sAHcWta79vWydzJ7Ed
	f9nCbv+bS56rk3Gqy5Efu8a+he+C8VB+NfNfwDq/LUUnQxIir0qig2gR/4a+rSDzBNk79owxk44x8
	UDsY0Vlynd/S8MAWD44PdXlhcu02GRnhlKRKNtduu69+RFfpZ5AAe7e7gXPz0K+StPHUMpnQsYkpH
	NZixgPo1hTW6HvGWdBzEloV+JH2kkcr/U/+kySCdQ9KX1x2hqpCCQCYPuqTNMO3MH3MAzqCY0E12C
	orcfDZoNIXUGra3Ertcj3gr5tZHeWwvdmgpOXggYc8C82VvlTiiGkoInCFF6KrPP9QtV3jaA2uGM8
	gyfBJWhgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsvTQ-0005Dg-07; Wed, 31 Jul 2019 20:45:24 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsvTK-0005DI-JR
 for linux-nvme@lists.infradead.org; Wed, 31 Jul 2019 20:45:19 +0000
Received: by mail-oi1-f193.google.com with SMTP id a127so51772898oii.2
 for <linux-nvme@lists.infradead.org>; Wed, 31 Jul 2019 13:45:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=thKu2Bkh/dGX8klKWoymWTLU8p62EgCYvrtdewNMDnw=;
 b=hijAsI/j7sfjoG8qLTNGj3gDmMx4KmDBCLAR946s3YheuWUgWiWdJwMCSERTxdCJGW
 CSdTW5io48il0A/gUUkSOWXIVJ3LAcC1G1ihFD33/UDuqdY1mBDhbSijqe+6gi97aUdU
 LB6wi7oPy9CGkgcux0yFGkUJxnYNHjW4Vc0+BnySgFnRSiDlG86uTHOdarlCmliuGU9L
 u3A1sny+ErCxrSeY2ddahXCijLcKAwcXmnEaTKl4XuWp21YM2SFwVE+oxW/LK+BNr+ec
 xJFFtYWyW7JNUglyChI2zUzoEf5hUrCd+bRdZXh6YXDMcUkdetQr1qxR7yF/dAh6NYO7
 0+9A==
X-Gm-Message-State: APjAAAW6/hX6oTFZGoFS1tKJSXRRbGzuDdx0bXzwFuqPXzkDrtjF/9Ac
 CtXXeOD6RljveT5SuxnDiME=
X-Google-Smtp-Source: APXvYqzEwSmkUw0ejr5LhU25yCpj4NAoXx3oOXxNLRVZ976j09mlnR0CSa/EYJw3gP2ssceLOa6RHw==
X-Received: by 2002:a05:6808:3d5:: with SMTP id
 o21mr47412685oie.108.1564605917566; 
 Wed, 31 Jul 2019 13:45:17 -0700 (PDT)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id k10sm23620100otl.21.2019.07.31.13.45.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 31 Jul 2019 13:45:16 -0700 (PDT)
Subject: Re: [PATCH rfc 1/2] nvme: don't remove namespace if revalidate failed
 because of controller reset
To: Keith Busch <kbusch@kernel.org>
References: <82a91815-f7ed-5931-58ac-5893e68cc940@grimberg.me>
 <CACVXFVN6o+dOFwDV=FPSHjVnhYSLBUWNHsXc4B=fwE5PAny_dQ@mail.gmail.com>
 <8bd6d219-f4fd-de58-a341-257c6274eddd@grimberg.me>
 <CACVXFVNT5sjk4MC6qJoBFug8K9YgEFQEy6LSknJT6=O-2ispMg@mail.gmail.com>
 <2825eb74-1df5-5dd2-3e90-c696bc7fa3d1@grimberg.me>
 <20190730173048.GC13948@localhost.localdomain>
 <61445d6f-f4ca-f8d4-cef2-5bfe40aa1e7f@suse.de>
 <2f7535ab-3d45-b24d-1512-a937e16e620f@grimberg.me>
 <20190731193257.GB15643@localhost.localdomain>
 <0720636c-8706-e927-3c0b-c2687694664f@grimberg.me>
 <20190731201634.GC15643@localhost.localdomain>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <cb8a1faf-ea19-06c8-35dc-08cd11180974@grimberg.me>
Date: Wed, 31 Jul 2019 13:45:12 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190731201634.GC15643@localhost.localdomain>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_134518_639812_8BD0754B 
X-CRM114-Status: GOOD (  16.42  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
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
Cc: Keith Busch <keith.busch@intel.com>, Ming Lei <tom.leiming@gmail.com>,
 Hannes Reinecke <hare@suse.de>, linux-nvme <linux-nvme@lists.infradead.org>,
 Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>>>> I think I asked this but was not answered, why are we removing
>>>> the namespace at all? do others do the same thing (remove the
>>>> disk if revalidation fails)?
>>>
>>> If a namespace no longer exists,
>>
>> Why is it no longer exists? it failed revalidate..
> 
> One way it fails to validate is if it doesn't exist, i.e., the
> controller returned an error when attempting to identify it.
> 
> The other way it may fail to revalidate is if its identify has changed
> since we last discovered it, so removal is better than data corruption.

Well, perhaps we can mark failures resulting from reset with a transport
error.

For example, nvme_cancel_request is setting:NVME_SC_ABORT_REQ, perhaps
we can modify nvme_error_status to set that into BLK_STS_TRANSPORT and
check for that as the return code for revalidate_disk?

Thoughts?

> Either scenario could happen from administrative namespace management
> commands to any controller in the subsystem.
>   
>>> what do you want to do with it instead of removing it?
>>
>> Well, I don't see anyone else even checking the return
>> status of revalidate_disk.. Perhaps Hannes can share more
>> on how scsi handles this?
> 
> Other drivers may have a different path to this, but I'd imagine they
> handle a LUN deletion somehow.

Well, its not coming from revalidate_disk failure as the return status
is not checked...

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
