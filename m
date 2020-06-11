Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DD6F1F6AA1
	for <lists+linux-nvme@lfdr.de>; Thu, 11 Jun 2020 17:10:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZYmrdurVxYr7TQ/TGTWUfZ4rNToE0R30a6+nVlkynjI=; b=lu/4Q+S7QTToHo
	SrzNM38twD+iIijTWZygysErSgsdJDmXN1xI3pLooFRwdTzb41lzPpoMxXZkWFPAhtvLH8cdmr5WU
	lht5loTQsRx00Hv7pbxw33a+NFyPRo/pATpbImB47blIZWT1eztjwaIe9u9Ego+JFgSEptqo/+KGe
	Xa8pyIkYAlsUnEJw5/Lkd/MHRK80hNUiRDVE8bCIX22rlmIhsnQJTTFEa3CfK1IyAYBsy5TlAHVbd
	8hyasa23/mKgELm186d3LlcI9+MjMxbyalOKar6utf5q0L0tZxAOuK6FIkFT7qYP5h+BKt/G/tJDZ
	SnEWP3+m3uNeQ4ucVvqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjOqm-0001Fz-M1; Thu, 11 Jun 2020 15:10:40 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjOqi-0001FX-KV
 for linux-nvme@lists.infradead.org; Thu, 11 Jun 2020 15:10:37 +0000
Received: by mail-pl1-x643.google.com with SMTP id n2so2413954pld.13
 for <linux-nvme@lists.infradead.org>; Thu, 11 Jun 2020 08:10:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=/X/+kpACXvRRmwOF9itPa9xFOnhajqf8ulGsiMVdvTI=;
 b=bVKdU4m2RGJLj431IBJ9IrPrP4xrYzmUzo+VGCPj46tATsUxaOXCLcneqJS3gCWab2
 2d/lwDRCMtmHGgAgjjyhcXPd5RIEfKaAy8eKQ2vKy7GYqyF2t//cEmcYH6mxuxtWgZF9
 FUpzBwj23sECcBpqaHv6axyix+Z/MF9ed6C3U+zVPPEe0HF+AAmipWl4QIgZeZOFJQCK
 x5twinPxcJ/DjX0WMyWOnW4Kz+HQlBJB38zHRtpG/P7DoFoE/GOB83F7GDvVWKMr8Bcp
 iZcVxrFuZ/rXU3xNQ+vmT7cTtv/Uv+td11sSteiiQY8b3kuk880ERIZe2kPmFgBtuBDC
 hnjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=/X/+kpACXvRRmwOF9itPa9xFOnhajqf8ulGsiMVdvTI=;
 b=AiMveAA92xrQoFh6J2HCUqw5BZ1LUkCOkGOnbDc812h1RBgWpmx/RE8b0+LgDCa4fA
 mru3/fiDo+8VkAKE2agsaqPj9d4wmEAh21U7rtoMj+3d1TRvG04iOthn4Fte6eXYguq1
 mGltwcQnocswvj7OI6MQkvchhVRJ3+vf9E/FJ9GDt2sd/15GhjmcIunZx9uyH8N3jkTk
 K/cCxIQGwZgxeIpdPQBzV4v8oafCC3N+jQXAesYdGgxxpoYnRB2QrxoAcBmzx8LrxM2e
 vfznP1R7ew+9DOaHC2AZGqM3gA31uWNMX5CNr4WayzVYYoTiypQMNfFhD57HyPBGp6r1
 lzEA==
X-Gm-Message-State: AOAM533wB7GHtLc4kyuAFp/IM84qCKpjP2BN/8tihhDKdOb9aqOVGffP
 9PHJExlaBWzMPusbr4LKc9AG7Sla2DTltg==
X-Google-Smtp-Source: ABdhPJzRUlqMtsFRqGQ3yDymzVrbGrdzUxNGTf8zE2fVHizskDD6pQ9+BGMk1fcRsBvLUhILsMMo9w==
X-Received: by 2002:a17:902:ea8a:: with SMTP id
 x10mr3357374plb.330.1591888234845; 
 Thu, 11 Jun 2020 08:10:34 -0700 (PDT)
Received: from [192.168.1.188] ([66.219.217.173])
 by smtp.gmail.com with ESMTPSA id x4sm3517799pfx.87.2020.06.11.08.10.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 11 Jun 2020 08:10:34 -0700 (PDT)
Subject: Re: [GIT PULL] nvme fixes for 5.8
To: Christoph Hellwig <hch@infradead.org>
References: <20200611062257.GA11119@infradead.org>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <dc90f508-5c46-b69c-cb64-aa7383899cb0@kernel.dk>
Date: Thu, 11 Jun 2020 09:10:32 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200611062257.GA11119@infradead.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_081036_672050_29B79C07 
X-CRM114-Status: GOOD (  10.77  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Keith Busch <kbusch@kernel.org>, linux-block@vger.kernel.org,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 6/11/20 12:22 AM, Christoph Hellwig wrote:
> The following changes since commit abfbb29297c27e3f101f348dc9e467b0fe70f919:
> 
>   Merge tag 'rproc-v5.8' of git://git.kernel.org/pub/scm/linux/kernel/git/andersson/remoteproc (2020-06-08 13:01:08 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.infradead.org/nvme.git nvme-5.8

Applied manually, it's way ahead of my block-5.8 branch.

-- 
Jens Axboe


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
