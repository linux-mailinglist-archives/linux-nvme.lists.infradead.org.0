Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA56694D6D
	for <lists+linux-nvme@lfdr.de>; Mon, 19 Aug 2019 21:02:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eZOHRne1ESd65/Oe5wG6i7TSc3iWgKgOpO1it9nGCzE=; b=JveF9Ag9kp1RZY
	74mrJQAPL1xNGXcQRTWux2Q+xC6Q5ZBpXDUMReoXh5wGx5WJYvHoLUPXuiytI91aI+hZbt/6HlMrh
	gFTb5MwSh8ucwlFW+b6GdzHuz9mp/lvocs5xYR++69akMaH9XpltOo+BwIQ/fsaF1VGNesd1nl53V
	6lJxz7s7+wkQoc3VeEMPEkvSgTQVEJVqCxzL1CZnOuja2unDQd8LrJrvKWHYNoMDaUQlJq3PwTNg0
	3AWg3+Qf9rmpWtSc2gt3ZFX8wojzUujeFgYzpRqc+MxFR3CU4esQvUkVgJal3AgBRZvxWQDn5b33C
	zmusPj0VCeZVQZROQz6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzmv7-0005Rm-PZ; Mon, 19 Aug 2019 19:02:22 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzmuy-0005RS-VQ
 for linux-nvme@lists.infradead.org; Mon, 19 Aug 2019 19:02:14 +0000
Received: by mail-pf1-x441.google.com with SMTP id q139so1697595pfc.13
 for <linux-nvme@lists.infradead.org>; Mon, 19 Aug 2019 12:02:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=q4rnD2AOpR/95lDbnfWSHnN+HAD3xqLotj0pdJ8MO+M=;
 b=wcbRtEO1DusCAM1DvYyK7yjIacFwB4c4UdScyq0KyWRqUoBbeE5BKNXkLGisv9kBee
 p/OgJnoyojBTfv/j/fpknTzK56CUwtudc2AD1rnCkbjh7sSqFDdf3BhuMZxSbwcT71TY
 VvwOANzgfrA5q1DYG23XtR9vcMeohomgM4S5VNhkBEMhuXlftWBkoOEvo4BJUTXoXUD7
 DW3e8p9TzLJ3Pa7Lg571PN81Iqj5sm8iVdxDhfhQnpdUOhjTBaPASWSeuSchn9vpxt7H
 nku1L7mOF/WO5sATX0KzvAg+GE0YDjfFsUd7z/aL5VHUfrYpjsVMp+aNf3Rm+dyC5Zbv
 DLBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=q4rnD2AOpR/95lDbnfWSHnN+HAD3xqLotj0pdJ8MO+M=;
 b=GzCsfV2imo5bqInUcnE+GR/dsWCmi/gPZ0j4y6dbVhUGULfZFDRLg1DZTIY6/rbCY0
 4dftz8DiYPXIuL3pT7leEDXWB9incDjMjxHAbddb1tyb/0KZJsz/e3B0ZgrjsH/WdwhD
 0bOliXhSHpl/t6D+I8Vx+tBUUuNnCnnCyK4GKU6zO4ymheVTXkNigtmBZqfRc+TdndLv
 d5jj5sdpWBj7Wiyy8eMk8wUjW1HgjYX9YLAHXyOcSRI22fZKtaFkVTAna/C9sw+s29Xz
 af+wK8cIrRFZdqBZS3GCTwV7calvv4Cmca9cr/rhQ71hmv+kebouRsaOB0ggLzvtmdRf
 1Vtw==
X-Gm-Message-State: APjAAAX6yXJpWWePoifudZAwm8dnhBsdzQENzMHaPc4Ic6o0fy+u4Kq0
 9ACpGABvXaiX0vXZg/jVJShebA==
X-Google-Smtp-Source: APXvYqxH8yWDCow6bOeY76BOUcDqXc0DwsAsYiHabmcjP4BE1AURGMn4k5/tw7ig0wz77cTgZzRVCg==
X-Received: by 2002:aa7:9298:: with SMTP id j24mr24981971pfa.58.1566241331348; 
 Mon, 19 Aug 2019 12:02:11 -0700 (PDT)
Received: from ?IPv6:2620:10d:c081:1133::103e? ([2620:10d:c090:180::3970])
 by smtp.gmail.com with ESMTPSA id s67sm15532333pjb.8.2019.08.19.12.02.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 19 Aug 2019 12:02:10 -0700 (PDT)
Subject: Re: [PATCH v3] nvme: Add quirk for LiteON CL1 devices running FW
 22301111
To: Sagi Grimberg <sagi@grimberg.me>,
 Mario Limonciello <mario.limonciello@dell.com>,
 Keith Busch <kbusch@kernel.org>
References: <1565986579-10466-1-git-send-email-mario.limonciello@dell.com>
 <b4456ee7-6f5d-5968-2167-9900f049e5c6@grimberg.me>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <3d01da80-be78-5ca6-6ef2-c0e44840118f@kernel.dk>
Date: Mon, 19 Aug 2019 13:02:08 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <b4456ee7-6f5d-5968-2167-9900f049e5c6@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_120213_040965_4DAE30D0 
X-CRM114-Status: GOOD (  14.43  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Crag Wang <Crag.Wang@dell.com>, sjg@google.com,
 LKML <linux-kernel@vger.kernel.org>, linux-nvme@lists.infradead.org,
 Ryan Hong <Ryan.Hong@Dell.com>, Jared Dominguez <jared.dominguez@dell.com>,
 Charles Hyde <charles.hyde@dellteam.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 8/19/19 12:57 PM, Sagi Grimberg wrote:
> 
> 
> On 8/16/19 1:16 PM, Mario Limonciello wrote:
>> One of the components in LiteON CL1 device has limitations that
>> can be encountered based upon boundary race conditions using the
>> nvme bus specific suspend to idle flow.
>>
>> When this situation occurs the drive doesn't resume properly from
>> suspend-to-idle.
>>
>> LiteON has confirmed this problem and fixed in the next firmware
>> version.  As this firmware is already in the field, avoid running
>> nvme specific suspend to idle flow.
>>
>> Fixes: d916b1be94b6 ("nvme-pci: use host managed power state for suspend")
>> Link: http://lists.infradead.org/pipermail/linux-nvme/2019-July/thread.html
>> Signed-off-by: Mario Limonciello <mario.limonciello@dell.com>
>> Signed-off-by: Charles Hyde <charles.hyde@dellteam.com>
>> ---
> 
> Jens, can you please rebase for-linus so we have the needed dependency:
> 4eaefe8c621c6195c91044396ed8060c179f7aae

I just did as part of adding a new patch, being pushed out shortly.

-- 
Jens Axboe


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
