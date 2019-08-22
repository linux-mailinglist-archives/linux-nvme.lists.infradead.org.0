Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6054B988D9
	for <lists+linux-nvme@lfdr.de>; Thu, 22 Aug 2019 03:05:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vBbsyM3HRBK0lvD5q1IXm6gCg5Ht7kht0tDtE8uyFIg=; b=V4HDCqtOaa3ttsdmjdg7xcBwD
	hDZaL+loG5XyQfBSqVTZ56gAGTIMucG4JeXGHOvFSFUDo/5jh1FSj0cZpyG2g0s1hggivrfm9xY3V
	8Iz2849KP1xcjmRuJNUKEB9519gGsKTdPcgd9zNyirC/ulHdJeA/HP5vFHcB4okwKXH5wosCQ+4xE
	UPYMWlCTYiVT3ZzvwQueCfghYCPPqael0rjWH9cIGmM5SZtJjUUtQygg6Qsw+K2/2zJBafPN4Zrej
	9mTOLL5nAQnlFFAl2vmpuS+kjq58O8zkqZq2HRyq7TgdkV9KD+fAT0niXIN779RijKDxDUENKJxVh
	wnePpDwJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0bXm-0002IF-0U; Thu, 22 Aug 2019 01:05:38 +0000
Received: from mail-wm1-f65.google.com ([209.85.128.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0bXh-0002Hp-Fu
 for linux-nvme@lists.infradead.org; Thu, 22 Aug 2019 01:05:34 +0000
Received: by mail-wm1-f65.google.com with SMTP id i63so3966163wmg.4
 for <linux-nvme@lists.infradead.org>; Wed, 21 Aug 2019 18:05:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ig8aKB0dTht95eGP0mGMG5BYefGyHVfXYqUDDUyDm34=;
 b=AcoE80PiHEj/p76t52AxMQ0/wagyLFGSUvnsrOVBS7xkSxDyxJz3PUo/mvcPIUCsRh
 eYmlLA3zrvq1HhBCSCLiGNOHj79S+YEchnnx7w7bWa15DKsEBNGRR711hJcO2+WlML0B
 sB7khXDHkzGhlSaQC//+1KG4Bj4ajLvfqjfpUNcrV2g2FzZFZi22JZWRRXMuyxoQazwZ
 4FvQTBTcAwdeUT97v8e7Lznf2MDMuy0UeFNFHnbl0GE3nZywK+njloTx1dNdsODVMtad
 QOx9waj6Jf67RlMB6DxCrazfcyP7n1goWqcjjM24g3QklgUCEJCzg1u6C7OK4B5hhbWd
 +t4g==
X-Gm-Message-State: APjAAAWY3/eDw8j8tcSvaJXJyxd97PGKwQ1+tfZeI4yxicJsaRP6HpyI
 PAtLGRErgOTpqoP04NY2yulmvHCW
X-Google-Smtp-Source: APXvYqzSDZeV2RYXUaOdl43Cffa1S3u5ojc+wk8F9LnBY5QzV7tD9hnI2+R2k7znPV0j7u1z8h3B9w==
X-Received: by 2002:a1c:4e10:: with SMTP id g16mr2912313wmh.67.1566435931555; 
 Wed, 21 Aug 2019 18:05:31 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id o8sm5304558wma.1.2019.08.21.18.05.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 21 Aug 2019 18:05:31 -0700 (PDT)
Subject: Re: [PATCH v3] nvme: exclude completion trace from non-multipath
 builds
To: Christoph Hellwig <hch@lst.de>
References: <396d507f9a0e312998bd6805b151ab166f53a5be.1566290451.git.mskorzhinskiy@solarflare.com>
 <20190822000939.GG9511@lst.de>
 <acaf9334-3c5c-8f25-d436-0c87e94a6064@grimberg.me>
 <20190822003549.GH10391@lst.de>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <43b9eeab-9e5b-e5c3-235f-d2d050886d28@grimberg.me>
Date: Wed, 21 Aug 2019 18:05:28 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190822003549.GH10391@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_180533_533048_8D0A954C 
X-CRM114-Status: GOOD (  11.57  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>,
 linux-nvme@lists.infradead.org, Hannes Reinecke <hare@suse.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>>> Btw, I also think we should probably pull the original patch
>>> from Hannes and just apply a clean one given that this is just queued
>>> up in nvme-5.4.
>>
>> Thought about it too... I can fold it into Hannes patch.
> 
> I'd say let Mikhail or Hannes resend a new one against a clean state
> with all the requested improvements.

Mikhail/Hannes, care to send one patch to replace both?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
