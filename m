Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41F621EE794
	for <lists+linux-nvme@lfdr.de>; Thu,  4 Jun 2020 17:20:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5q5oylWRCoHpNph1b+tJJBNqTgUGLxBY+OAk6/OKQME=; b=agMOt54TJZ8MAfBbczi3gwgMu
	cmo2Ui2hnguABTQj8Vv2R74hNF6A/tksyktMxs9mipBdBHlq9yR1CxNNwDzTfb+kVDtXCGPGWOfh6
	fNv63Mw9xTpcqIPli1ADtluzxmsu07S0E5EbmAIrRWEg47u9oN20SWsGFMkwaC06a3PEkkMj62Tx5
	Dd/sMfzkSqcmN6g1XWdF1ivne+OWU4PVfvhcZlv5upcYAuHnojPY60dIcYmpnQhFhrEtfQN0lx5x1
	9M5CGcflqPuP03pA51or1yXi+miIjDhNMdOFOH6FRgTJrCX7j68ifqUp8MOO6c5XlHFT/1VLn45w+
	us1ej3I2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgrfQ-0001DQ-Af; Thu, 04 Jun 2020 15:20:28 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgrfK-0001B4-Ry
 for linux-nvme@lists.infradead.org; Thu, 04 Jun 2020 15:20:24 +0000
Received: by mail-pj1-x1043.google.com with SMTP id ga6so1257024pjb.1
 for <linux-nvme@lists.infradead.org>; Thu, 04 Jun 2020 08:20:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=L5y9b1v4A4lBO5NWvkoBLQUmHew2ukXmcq/ClJT1w1w=;
 b=gpos+plQKfEIX7tzDBt/sI1M4cJ64HGjlcagV8I9ZM5vteH+aKUEUFO+edPS0/ec+W
 n5texbDTEFIsJZXY49B4p050y09qfwf2Tr4C+tZV/0UnDjeFumyzyatU66CMmkp++5ED
 4cdCY2TLNCYSpQvvfik1nroAPCGadhKstu8xo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=L5y9b1v4A4lBO5NWvkoBLQUmHew2ukXmcq/ClJT1w1w=;
 b=YXeQO0a6yaVuv1gEPzrBRKO8dMbQfYu78R/litym2O22yVDJinLQRnfv4hiTmodU7Y
 hIVFSlCNKWIJy4jBheSyF8jWO0wA0Pa2cmUfWitKyKLMxMKcRVOejxa/iLsgi4bSrlQy
 HqTvG2blb1SAJ1GFtVtFHgKejq9ilmMnvJacYHuohzC3XTYXYOIySBV5HFUDM4CWyG0s
 uA0AyfxVp+b/gG/PZcfTqAM7Pyw90Ubla0aHvGPFnFRCPd3+OWRwqCYZV03qP8ZxhgVv
 h+jqGz+yQqO97mc1RifIJ7FagczK8mZ7bf5izeobBdJPqqvQLPo162gFEzdeWynSWjgk
 0nbQ==
X-Gm-Message-State: AOAM5320AjOtnsRruJYq4P8iXVXw8tqo00PzjRD/igUOsT9+jzbVGMyc
 ejJVrTJn+e9eWHmB5v/35WAH2Q==
X-Google-Smtp-Source: ABdhPJw9p8K0tPRXYb3Jjq/wmj3jBKcwtKglo8mpz4juTMEILBuyPkPUJXY3hMAlX2cld8lf4d2muw==
X-Received: by 2002:a17:90a:4ecb:: with SMTP id
 v11mr6588792pjl.75.1591284021628; 
 Thu, 04 Jun 2020 08:20:21 -0700 (PDT)
Received: from [10.230.185.151] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id u7sm5095551pfu.162.2020.06.04.08.20.19
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 04 Jun 2020 08:20:20 -0700 (PDT)
Subject: Re: [PATCH 1/1] nvme-fcloop: verify wwnn and wwpn format
To: Dongli Zhang <dongli.zhang@oracle.com>, linux-nvme@lists.infradead.org
References: <20200526042118.17836-1-dongli.zhang@oracle.com>
From: James Smart <james.smart@broadcom.com>
Message-ID: <60df6752-3512-f7a9-b0df-1096b93b8eda@broadcom.com>
Date: Thu, 4 Jun 2020 08:20:18 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <20200526042118.17836-1-dongli.zhang@oracle.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_082022_907326_F3161C84 
X-CRM114-Status: GOOD (  13.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-kernel@vger.kernel.org, hch@lst.de, chaitanya.kulkarni@wdc.com,
 sagi@grimberg.me
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 5/25/2020 9:21 PM, Dongli Zhang wrote:
> The nvme host and target verify the wwnn and wwpn format via
> nvme_fc_parse_traddr(). For instance, it is required that the length of
> wwnn to be either 21 ("nn-0x") or 19 (nn-).
>
> Add this verification to nvme-fcloop so that the input should always be in
> hex and the length of input should always be 18.
>
> Otherwise, the user may use e.g. 0x2 to create fcloop local port, while
> 0x0000000000000002 is required for nvme host and target. This makes the
> requirement of format confusing.
>
> Signed-off-by: Dongli Zhang <dongli.zhang@oracle.com>
> ---
>   drivers/nvme/target/fcloop.c | 29 +++++++++++++++++++++++------
>   1 file changed, 23 insertions(+), 6 deletions(-)
>
>

Reviewed-by: James Smart <james.smart@broadcom.com>

Looks good. Sorry for the delay.

-- james



_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
