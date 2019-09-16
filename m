Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F302B3E82
	for <lists+linux-nvme@lfdr.de>; Mon, 16 Sep 2019 18:13:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KiKYJQj7m31enHNOwIiJsmp+8OmrKBVkdDrvexIXE5w=; b=NIQFxVE4xwXwzK
	fTXGxrK1vZ2SxuCaAWm39zxl3oPzgpW3AVvTcg8vbAYFTqnca1Jss5FO1LXOiPo00gJROtRfTHRoi
	nPSHfj+VfJfy5cmUXQNKfduh/S5EbUTu1E2DbaWRiHMd/Gc/iwDNwotDcIcebnUD7q/V/v8Huco5+
	WrYRQlcvbrDUK9emN6pBCFO8pSFLItqp9joHUVoria3yh2RCw7aNV1XF2p1xYOPswcdE7tWnRMSEP
	u8IwNNqCaAMNhnKzNJv7f8qqgFOfQ+29ja8VgSHyNl+W9tRF5ZiEYkx1i7KejoH00tO4niGXEuj/U
	K26dnGoFRqCegKaoKfwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9tcl-0001cK-Pq; Mon, 16 Sep 2019 16:13:11 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9tcd-0001bv-2p
 for linux-nvme@lists.infradead.org; Mon, 16 Sep 2019 16:13:04 +0000
Received: by mail-pf1-x443.google.com with SMTP id q10so202672pfl.0
 for <linux-nvme@lists.infradead.org>; Mon, 16 Sep 2019 09:13:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Ngns2aZQDk8lD0GtZWORQNTVK+rxzxi28UBcZgbJoZA=;
 b=oaCWuswNbauDH2oisRLajp7tOrQT2Mky1p/Uxd+XPFP/qlKb7uU10XrbSkartWxxZb
 mGr1lVC80Fn7igRf0Tj8vVKu33vjSWxbZ9unCFA1sDVN0XhIMu+yiGKSdU/klp1RsVwG
 Mn40XdRq90F6W9tbzdYjCy0r3IvlOS5qCKhYtcG0ACXeh2ggzXyKG4nwH84smstPh6DL
 2cfhwg6WOARdKBRyeqXF4HX2kyCVxc4OnBPGuvGd4eoawPcJqBhFe1QKNFK2v8aDPmxu
 pawlgzO2SbT4HOEk4Cc7HjNTb1qRLNNRollHEZ0zlqQPm8Z26qYorHH8xQ/DQlC6dnCO
 Ck9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Ngns2aZQDk8lD0GtZWORQNTVK+rxzxi28UBcZgbJoZA=;
 b=R7QwEzj7XdBUbbcHuQeYthlNe410YKDgmWzNq8k4HckgQ/GIZsjtfNTn5bASXV5sXN
 ekoWTCqO9FL4vLIdRT3+IquantjTf+xQWdHh9eX4E0ZsIGzqSavcd9607GcA6yagje+J
 /k7J1t3ZSMz/wxpXKoObSA115LFaXaLm77/a4qOa8jTKU2aGe+CGnfWwVH8z8FQUd+zS
 D9Ywa3fI1zV/h3iW0RKHkU8dBGatZkGR62DWNj4JH5dy/aJo1sfIFxaGuCrFhO27E3gL
 beeFA+9PafYk/3Fzi/ElUlPWx/Q8+stXaLuZrGw3IPjx6bCLztbhgpHdx/KHYehaKgSD
 qKig==
X-Gm-Message-State: APjAAAWghW/02PQBlnhFOr8Qd+aNocZuZAxTJMPUGJ2zceZmxXcjZ67u
 0FyWKahTXTQ6C+6L5TbRiZGtqQ==
X-Google-Smtp-Source: APXvYqzoI1MIdwgXIaldAvl4WtNnSZXN+zP3IjYUvchSSGvKCwmOB6fBDixfPEPrUt9pUC7czo7J/w==
X-Received: by 2002:a65:5348:: with SMTP id w8mr56564593pgr.176.1568650382556; 
 Mon, 16 Sep 2019 09:13:02 -0700 (PDT)
Received: from ?IPv6:2605:e000:100e:83a1:c484:c1a1:f495:ecae?
 ([2605:e000:100e:83a1:c484:c1a1:f495:ecae])
 by smtp.gmail.com with ESMTPSA id h186sm70982796pfb.63.2019.09.16.09.13.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 16 Sep 2019 09:13:01 -0700 (PDT)
Subject: Re: [PATCH v7 2/2] block: centralize PI remapping logic to the block
 layer
To: Max Gurtovoy <maxg@mellanox.com>, linux-block@vger.kernel.org,
 martin.petersen@oracle.com, linux-nvme@lists.infradead.org,
 keith.busch@intel.com, hch@lst.de, sagi@grimberg.me
References: <1568648669-5855-1-git-send-email-maxg@mellanox.com>
 <1568648669-5855-2-git-send-email-maxg@mellanox.com>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <f56d2bef-93f4-95b1-b607-d97396626359@kernel.dk>
Date: Mon, 16 Sep 2019 10:12:59 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1568648669-5855-2-git-send-email-maxg@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_091303_126990_9441A026 
X-CRM114-Status: GOOD (  11.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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
Cc: shlomin@mellanox.com, israelr@mellanox.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 9/16/19 9:44 AM, Max Gurtovoy wrote:
> Currently t10_pi_prepare/t10_pi_complete functions are called during the
> NVMe and SCSi layers command preparetion/completion, but their actual
> place should be the block layer since T10-PI is a general data integrity
> feature that is used by block storage protocols. Introduce .prepare_fn
> and .complete_fn callbacks within the integrity profile that each type
> can implement according to its needs.

Two notes (for future reference):

1) This doesn't apply against for-5.4/block, I had to fix it up
   manually.

2) For more than one patch, always use a cover letter.

-- 
Jens Axboe


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
