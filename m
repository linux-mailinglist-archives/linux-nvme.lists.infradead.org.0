Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B38F9999F
	for <lists+linux-nvme@lfdr.de>; Thu, 22 Aug 2019 18:57:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=K/UCwQzArw8GFrjKePOYYSAerXT30jb0aHpl/1ZSga0=; b=SujolR8PVtL9ktbZhxusPGSio
	GEP2pIfarA01Bae5d1nn03tAnPnHxdgP02ygd4rmPIUtl/dwNHt8IQedK3fx0mUKBUsVqb1qgYmJB
	FtyNSRm2tpcaZ8urlecQBPhDpWxaLkZI+N+65AX4m6CTFzYsq2pzM06iBEe/scNZJ3Uw8X9FBXvry
	/PPcD+LhYx551Lf9zcuDozKknWy307LEeAakNHI/QvXKDPq2RpYcduJuarfICkiIVc/IIQ2XbgjkG
	9NvunNmIcPLGRCCp613ejPx7y439RMRYrYaQWknXPq9LYNaK+WqeBMalm244eIojbHZ50wieZgiBL
	ffvONRGrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0qOm-00069a-Vn; Thu, 22 Aug 2019 16:57:21 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0qOf-00069E-Jx
 for linux-nvme@lists.infradead.org; Thu, 22 Aug 2019 16:57:14 +0000
Received: by mail-oi1-f194.google.com with SMTP id a127so4900725oii.2
 for <linux-nvme@lists.infradead.org>; Thu, 22 Aug 2019 09:57:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=rhremrqkypCv67rdvWTvFCmA+ijWNwHVxz3q5oprVXk=;
 b=QUx2nOoEWjH9L5/ZDypMtNM5wXzDRgv78w8Y2PRJMEid7EaQd8QifJNFrzwPvCzT6E
 vLzl/vwcA5S5qGKmXiaI2l5KV7Ux0lwMMegU3stZSr0ygFsBn7eYaGzqKQue1JvWnQcv
 IkygCh6gr1Q/P2Peqgo0IjhPNy50CQTFrfGRzxCOTKPaLbwyyQioySA3kjYQMiBmB6BH
 iaVvvV16Ue1d6Er6o40LEuHVQ1p/RWET/5ooyxmkk1H5Y9tyO/Ftd7pekMWfS2FdZeap
 miifXY5jqb4C1lSJCXdh/b5q/2Ju02rm29pnygHJoMIqtaD6sEFomnSl/tYPIbXgZpe6
 k9Gw==
X-Gm-Message-State: APjAAAVaPyaz8gBStc09qHWgVEZDfCXJWt+nXUOQLUl5gYGijnpVfLN3
 MP/o7b1SwobYGiTMTyAgnE4SpCgi
X-Google-Smtp-Source: APXvYqw9dr31sRH8VZuTjf1XNEQ7/Hf9qbiUvSRm+1/vO7LPDJYbFWdrWGJ43YvgIu9hJ0j8HKlt9w==
X-Received: by 2002:aca:c713:: with SMTP id x19mr95115oif.158.1566493031841;
 Thu, 22 Aug 2019 09:57:11 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id 9sm9804oij.25.2019.08.22.09.57.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 22 Aug 2019 09:57:11 -0700 (PDT)
Subject: Re: [PATCH v3] nvme: exclude completion trace from non-multipath
 builds
To: Hannes Reinecke <hare@suse.de>, Christoph Hellwig <hch@lst.de>
References: <396d507f9a0e312998bd6805b151ab166f53a5be.1566290451.git.mskorzhinskiy@solarflare.com>
 <20190822000939.GG9511@lst.de>
 <acaf9334-3c5c-8f25-d436-0c87e94a6064@grimberg.me>
 <20190822003549.GH10391@lst.de>
 <43b9eeab-9e5b-e5c3-235f-d2d050886d28@grimberg.me>
 <bf77e846-b319-0d6e-ece6-812257f33d57@suse.de>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <904604ca-261c-fc0c-b73d-e67902e8d845@grimberg.me>
Date: Thu, 22 Aug 2019 09:57:09 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <bf77e846-b319-0d6e-ece6-812257f33d57@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_095713_657031_CD5E3A79 
X-CRM114-Status: GOOD (  11.65  )
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
Cc: Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>,
 linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>>>>> Btw, I also think we should probably pull the original patch
>>>>> from Hannes and just apply a clean one given that this is just queued
>>>>> up in nvme-5.4.
>>>>
>>>> Thought about it too... I can fold it into Hannes patch.
>>>
>>> I'd say let Mikhail or Hannes resend a new one against a clean state
>>> with all the requested improvements.
>>
>> Mikhail/Hannes, care to send one patch to replace both?
> 
> Yes, I'll be sending a replacement.

Thanks Hannes

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
