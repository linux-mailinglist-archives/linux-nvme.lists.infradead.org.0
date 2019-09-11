Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF60EB053F
	for <lists+linux-nvme@lfdr.de>; Wed, 11 Sep 2019 23:33:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4FoMQnuownByjyuryoYUDbVRjtF0bA87KgLmchFZxNA=; b=AM1fIp/6p5h8v8
	gkw5y4sepMRbb27PSdTzuG4cITX5+L/HP7gcCd9UTbitXbY0QeRI0qwWquGG1K+orN09F4zvfMyiu
	LslWUGW646OLIaPDAuh2UClrxA8122POff+AABwi+McLCj1uhFZb6NqmqohDHrwUaQHwpRosIIZ2L
	c4Fcbxy6he76P9+T/4z8tf7zhADTBjo4tGVOtwzmk9asSU974MfXklUAzDQ9zwaVr64ptZDbYyUd5
	Cucc6tCj7upN+LkkCWN0rcBEerbrya4I8wCDb6b6ZL7GOHfcJnIesQ9nAuY3lObtVjEMrphvnE5vJ
	f8FbN0kSw+xAwqaBd/Nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8AEu-0002vx-8g; Wed, 11 Sep 2019 21:33:24 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8AEj-0002vA-8D
 for linux-nvme@lists.infradead.org; Wed, 11 Sep 2019 21:33:15 +0000
Received: by mail-pf1-x442.google.com with SMTP id b13so14501430pfo.8
 for <linux-nvme@lists.infradead.org>; Wed, 11 Sep 2019 14:33:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=DsFXUPgRutPXmGGMf6+fmS0OQQ0zQi2gyRsiD/6RStE=;
 b=0chkhS9V7SJc5WBafiyjn+EWvaleVWrxem2VVzunzpD42z84NdJX39C3I691SwHLGo
 2KVovLH2VHrBryT8qU5NN1s+2HvQH5EnNkJNOmp52JF5ZEakIEkm8xb8LE6JwF2a1A0O
 CvtujzWiryQA45+MLLOj5V1AxzlVlDEv/+HfqintD2GaSgqVXSTrMt3tqgQhnM0mxmBx
 W2BmI9dhSgPSY+XUld+WdRN6CeXGqA+AShe+c/p1HHfExzgo9btn+jWbK/je768mnsrH
 NIsik8MxDU0LsB+oHIIud5gvampwx+mjg6kd4rG1+ar9d+H/uH7RU8z7dYRa8Q0w2MC7
 wGog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=DsFXUPgRutPXmGGMf6+fmS0OQQ0zQi2gyRsiD/6RStE=;
 b=IBpAr0qBxym5GKNfbjvDNVqdgDg+p/25TPEI5ZqIFj7RH1b/RP3uJfBYfT+3PoqCLk
 wlw/St2wg5KTU4KCW1sv2zWUOI6rU4KDMLA0aDkK7bGAQ9OfII6j4KdZi1JcXk3BN4Km
 x/jLw+myTMa7dMyyGq6OWQysqi7W+QydN5cE9zJD5S+vO34mVDxUxraZRnunBgbKy5o/
 aV18fCyRKyl2Ozf0FJgqHOna9+ARno9Fhwe4uTjMqMw4Bx4bzDHnAupYCHfqBMqWhnDl
 GNUKjTYP9qayS1eSblqz6kwfeEpzwdrsrNNP9ct1RtArjQs3PBsrIekE+jAV+DzqabGR
 D3Ng==
X-Gm-Message-State: APjAAAWRLr8i5/E8dJNEHOazPSY0SS8exacf09pTzWq7CcdAGfycxzau
 9Zj3EuO55rn2AketCBGjYN02Iw==
X-Google-Smtp-Source: APXvYqxRaVPnqJzRyo0NK0QcLae/GUpZA1QmEYJm+Ha49qfk3N6hJSSt8f3FKGBt5MFHWYA3zAkGZg==
X-Received: by 2002:a17:90a:360b:: with SMTP id
 s11mr8043323pjb.30.1568237591597; 
 Wed, 11 Sep 2019 14:33:11 -0700 (PDT)
Received: from [192.168.1.188] ([23.158.160.160])
 by smtp.gmail.com with ESMTPSA id x9sm17417308pgp.75.2019.09.11.14.33.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 11 Sep 2019 14:33:10 -0700 (PDT)
Subject: Re: [PATCH v2] Added QUIRKs for ADATA XPG SX8200 Pro 512GB
To: Gabriel C <nix.or.die@gmail.com>, LKML <linux-kernel@vger.kernel.org>,
 linux-nvme@lists.infradead.org
References: <CAEJqkgjJEHmTT3N42BXkeb+2mDbteE1YwW25cgUpMk7A_sOWzg@mail.gmail.com>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <6a47a06d-f8f1-1865-1919-5ede359d0b10@kernel.dk>
Date: Wed, 11 Sep 2019 15:33:08 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAEJqkgjJEHmTT3N42BXkeb+2mDbteE1YwW25cgUpMk7A_sOWzg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_143313_354695_2BAD0FEF 
X-CRM114-Status: GOOD (  13.31  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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
Cc: Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 9/11/19 3:21 PM, Gabriel C wrote:
>   Booting with default_ps_max_latency_us >6000 makes the device fail.
>   Also SUBNQN is NULL and gives a warning on each boot/resume.
>    $ nvme id-ctrl /dev/nvme0 | grep ^subnqn
>      subnqn    : (null)
> 
>   I use this device with an Acer Nitro 5 (AN515-43-R8BF) Laptop.
>   To be sure is not a Laptop issue only, I tested the device on
>   my server board too with the same results.
>   ( with 2x,4x link on the board and 4x on a PCI-E card ).
> 
>   Signed-off-by: Gabriel Craciunescu <nix.or.die@gmail.com>
>   Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

For some reason your commit message is indented. Additionally, your
patch is whitespace damaged. So this won't apply anywhere.

-- 
Jens Axboe


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
