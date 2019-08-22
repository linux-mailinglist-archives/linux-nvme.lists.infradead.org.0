Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19FBF99E68
	for <lists+linux-nvme@lfdr.de>; Thu, 22 Aug 2019 20:02:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eBy9iGWFbzmpf3Lbi0bXsNbElCdQv+KD7YRV8fMFEbg=; b=LOeQmOch7Jq5QxBgkNeAU4AP6
	ll9/+nTxnl4ep2KX6EBcPM1lRop97eenc86R0w4e0UNukk8Gr54sHBUCLxPivdNw8MjjHD+fcadw+
	NvCf8TNLpWK+0qcgrnCdlGsc7SrUhy6miTtz882oCUCpkyzyo7IkZVbuRMhl42/U8pQifqsr4i1D/
	I21A5nsee7HrtrKHcTt3FyIkEPaglc3TSiSP92mAP1HBE5hIbEJ7z4yeV5CFxKHSx5N0rwINgmrt8
	OOB5g5GsLr+5zOZNtlyHpYiQSNXkQC+pV+C7eA+qcWf3Tlhc2EBb2rsbCn39ihuk1erQ+4rf2QS7I
	4mpJakSTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0rPf-0006nc-IU; Thu, 22 Aug 2019 18:02:19 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0rPZ-0006n8-5s
 for linux-nvme@lists.infradead.org; Thu, 22 Aug 2019 18:02:14 +0000
Received: by mail-oi1-f194.google.com with SMTP id n1so5046414oic.3
 for <linux-nvme@lists.infradead.org>; Thu, 22 Aug 2019 11:02:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=h4HLC/ZMcej4QwTFBU3hYph7KTFLlz07LCtS+Hruuhk=;
 b=OZKsdNXvzFdatoQTAiRBEP4ThcKXsKiIeGXRNpyyi9Frp4J8TlUdbLNd8g5GR7Lhxj
 hX4ZPDjTu9oxKoJGFg+QF4eQwuTplseaItSjNnF5USuP7rRY9kjHUjNBRvrmpfv9lMcD
 KzG0SVCzXHhM8ifmoZ0RYCemVmeYJ0h4MaH0feKXEsbEmlH1CcF8VIJK9YZ9T0tWhkCa
 YGd+e2cuf5eO/9pjvm/DW/rQbMUwDIqChxbzcwm53iO73T1Uio6bNzUiHdiHiaZewk1M
 dXheJZsu5497H+i4tTjwctoORPGPF8MJC2GT3bNQ/LTDd3+FdHW3VYO76zh9HFFftYyI
 Wnyg==
X-Gm-Message-State: APjAAAUIYJJ8egQ68ukmPLpYYdmzScIElRyBkl8vZ2Vd/JfyuH2dpeaF
 YZaKwGICM6tNHDM/BIvsCjHBCx2H
X-Google-Smtp-Source: APXvYqyUYP4/lZX+eCDveqQeqWdCXDo0bY2DhBbEvArHfbzlqv5ewmtI81CJSd+J2leLy7f7nZEVcA==
X-Received: by 2002:aca:edc8:: with SMTP id l191mr270438oih.15.1566496931917; 
 Thu, 22 Aug 2019 11:02:11 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id a17sm91005otq.56.2019.08.22.11.02.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 22 Aug 2019 11:02:10 -0700 (PDT)
Subject: Re: [PATCH v4 2/4] nvme-pci: Add support for variable IO SQ element
 size
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Christoph Hellwig <hch@lst.de>
References: <20190807075122.6247-1-benh@kernel.crashing.org>
 <20190807075122.6247-3-benh@kernel.crashing.org>
 <20190822002818.GA10391@lst.de>
 <87e1fea1c297ef98f989175b3041c69e8b7de020.camel@kernel.crashing.org>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <4fc11568-73fe-c8b5-ac29-d49daee9abad@grimberg.me>
Date: Thu, 22 Aug 2019 11:02:08 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <87e1fea1c297ef98f989175b3041c69e8b7de020.camel@kernel.crashing.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_110213_222139_9EA7BB95 
X-CRM114-Status: GOOD (  15.12  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Jens Axboe <axboe@fb.com>, Keith Busch <keith.busch@intel.com>,
 linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 Paul Pawlowski <paul@mrarm.io>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> wrote:
>>> +#define NVME_NVM_ADMSQES	6
>>>   #define NVME_NVM_IOSQES		6
>>>   #define NVME_NVM_IOCQES		4
>>
>> The NVM in the two defines here stands for the NVM command set,
>> so this should just be named NVME_ADM_SQES or so.  But except for
>> this
>> the patch looks good:
>>
>> Reviewed-by: Christoph Hellwig <hch@lst.de>
>>
>> So maybe Sagi can just fix this up in the tree.
> 
> Ah ok I missed the meaning. Thanks. Sagi, can you fix that up or do you
> need me to resubmit ?

I'll fix it. Note that I'm going to take it out of the tree soon
because it will have conflicts with Jens for-5.4/block, so we
will send it to Jens after the initial merge window, after he
rebases off of Linus.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
