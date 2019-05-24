Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5635629109
	for <lists+linux-nvme@lfdr.de>; Fri, 24 May 2019 08:36:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=L5Y571gEAvf7pcFabSxawF4/I90RPtGFcsLBh5ajjso=; b=F/y624mCozS+E7IP1XpUdzCxZ
	AV38JPCkYqizw8XyeRiIHZvXDGH3J9f4/ey/4OPM3+qOlyw2scF1S2evDnLVXMK4OC4cdHXzB8mTN
	GHbOBphmZaYNEnxwc0NbUSZv1Ysufl8abWWbF4559uuP4PI9nyhloL7FUhoAu/RyJ0uhmQyQu44z4
	KFIfgyOFFRtgrAe+z21ddimk9A+MTKNhwqluuF6rnuiR9/9P50tabUU2m2ibHMgzlLiavE8HANzjw
	pK0G4mwnV4zR9GR4r1oSEIEJOsHe4goFzmcrkjICLSbLSAWrcNmoZi67EBHt/zfrWGW/5yEmBFJ/V
	IALn6deFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU3o2-0006ZK-54; Fri, 24 May 2019 06:35:54 +0000
Received: from mail-pg1-f196.google.com ([209.85.215.196])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU3nx-0006Yo-Ra
 for linux-nvme@lists.infradead.org; Fri, 24 May 2019 06:35:51 +0000
Received: by mail-pg1-f196.google.com with SMTP id a3so4483409pgb.3
 for <linux-nvme@lists.infradead.org>; Thu, 23 May 2019 23:35:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=XCavzwZpJzjY3BhNoGOXFz6i9EPvMmH8b+SxAQsB96s=;
 b=D6wDxOZGwQepdJkL+gFwNEn2dpYfWtYF/7PNmQKak4KxgAVrOZJIB8gDobewBULkj6
 PtpfVN+OSiJ+amhBIzoM2dnzGsPFclZHzPm5SCfKoR0vWp0tfQqCw+XoWPtvaUvcAKH5
 74jWdoeWIOX83a8z2c0T8MpJlvWTe8sLaa61Qq55PxoWLi4N4FP+BsSMI5BJehvLQ5yX
 QHi0u5RZRE9Hu/omkTvC6M78L2WB7pL2SIByN77pe13B7omLv/sHaehArogw80zAA4m7
 SdGWmjlCFWddq0045bZBiOPY+fGJakLLQJAVySo1WuX5CUi9l97OSU9a8siQ8RYrfo1l
 MYCg==
X-Gm-Message-State: APjAAAVR1CT5zGktrUvotfCyC1ruDsW2LywcFMuApWBSUUW96ZKuuW9r
 pTOl+9lQhVkt3iMyiRe5bxlu4nnP
X-Google-Smtp-Source: APXvYqywYCOKBoIV1pXNPw5+ULcXx3OeShUIw6V0ZLCx9qloFMsfl2s3LZcB/D/zXBy0kKo/ItLqDA==
X-Received: by 2002:a63:17:: with SMTP id 23mr102442488pga.206.1558679747839; 
 Thu, 23 May 2019 23:35:47 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:c906:f7f5:4d80:8bc5?
 ([2601:647:4800:973f:c906:f7f5:4d80:8bc5])
 by smtp.gmail.com with ESMTPSA id h123sm1450813pfe.80.2019.05.23.23.35.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 23:35:47 -0700 (PDT)
Subject: Re: [PATCH] nvme: Ignore timeouts while PCI config access is blocked
To: Kenneth Heitke <kenneth.heitke@intel.com>, kbusch@kernel.org, hch@lst.de, 
 axboe@fb.com
References: <20190523231429.21235-1-kenneth.heitke@intel.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <99e76784-ce68-c053-9fde-d035d77f11d3@grimberg.me>
Date: Thu, 23 May 2019 23:35:45 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190523231429.21235-1-kenneth.heitke@intel.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_233549_891040_4FA47CA1 
X-CRM114-Status: GOOD (  11.83  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.196 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.196 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>   static void nvme_reset_done(struct pci_dev *pdev)
>   {
>   	struct nvme_dev *dev = pci_get_drvdata(pdev);
> -	nvme_reset_ctrl_sync(&dev->ctrl);
> +	nvme_reset_ctrl(&dev->ctrl);

This change is not explained in the change log. This opens a window
for nvme_reset_work to run concurrently from different contexts which
is not a good idea...

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
