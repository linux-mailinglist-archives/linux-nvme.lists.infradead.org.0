Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D28988BEDE
	for <lists+linux-nvme@lfdr.de>; Tue, 13 Aug 2019 18:44:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=caqlo9bJfGnc4t6okUIfC8pKN7QdLPti7WUqAzp+5c4=; b=t5TVlrujtAsVcfpcl8xSP8PpV
	Y6nK38RP3O8VcotLhsJRHLhDIQUDfyGSCS5ZWXSjk4vM1AG+LvGn95ERXxw0oimXELMi67fFa5cvW
	FHJDvYlKgfFrO8Kqw/uHpHcVxW81t5rpdCClbZeR98ExtCSe3zDKtUHGy4aJDDydwwOaUm669gANK
	Y6e8pBh3YUOuyDumMyQI8LNtX8hGwQJ3+oUQFJyPW4RnTMRcAUdEFjKV5fnfd2yT206vR1Q/DE1eh
	PYKtyP8F/8r/2WoDpKfO5btktMq7ooqgk5jfmour5ZZlhLiH0TKi4uP4q4SWuYkW2LcMFxEJ/cQK3
	PbgoPrOnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxZu6-0001ZZ-9O; Tue, 13 Aug 2019 16:44:10 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxZtv-0001Yh-Dj
 for linux-nvme@lists.infradead.org; Tue, 13 Aug 2019 16:44:00 +0000
Received: by mail-ot1-f65.google.com with SMTP id m24so22007710otp.12
 for <linux-nvme@lists.infradead.org>; Tue, 13 Aug 2019 09:43:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=EHwrJCBHQHnG7e/HAxinfwHCsKmPbM3/7RuW7IaJk50=;
 b=EfXc9Yi01ncLN10G7XqO6ALMY1SskT19d6Sbac7/ZcBKohLxoXqzIwxlpJSVCATtAg
 J3ZEuyU4Q6d3wNjUdjjC7O7e8y1ch9+swUtVtwYzqogDJp/m8SetqducqYKTnluirdMb
 FfbWsJ2MNb+GniDVTKaJORWfEnzwbaAKXz9w+73uUuOdYSbGb41ujees9DMDdu3QUpfx
 T+IHNiH2CDhmD90Mt+bMTpXUti1P4St167p6Nr05QsexXB1aN72hvAMa2D+F4r+3Am4S
 6QnNho8WVZPLGvqjKFyzM61T+s/TmG6ikf8V5EyZouWr5xgCruAgbV2KfK/fzcZpv0/+
 eWpw==
X-Gm-Message-State: APjAAAWkwYLgz1tnGFPaJ2i9EBHPSTVGi+qQn2WwP42Mu53ZPWzq6T+x
 kt1qhHxl6NWST7Ps172Dh6s=
X-Google-Smtp-Source: APXvYqweeQ6bVyfsxIQawlRkeY0mRYoCMf6fUASSvCdAxJajKNFmZcdQC/yG3x/Q3ygt2aV4OXOSDg==
X-Received: by 2002:a9d:7e8b:: with SMTP id m11mr37376124otp.209.1565714638744; 
 Tue, 13 Aug 2019 09:43:58 -0700 (PDT)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id v5sm1759314otk.64.2019.08.13.09.43.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 13 Aug 2019 09:43:57 -0700 (PDT)
Subject: Re: [PATCH] nvme-cli/fabrics: Add tos param to connect cmd
To: Israel Rukshin <israelr@mellanox.com>,
 Linux-nvme <linux-nvme@lists.infradead.org>
References: <1565702251-17198-1-git-send-email-israelr@mellanox.com>
 <1565702251-17198-2-git-send-email-israelr@mellanox.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <82499575-a1d7-35aa-1cae-32d1fdbc3ab0@grimberg.me>
Date: Tue, 13 Aug 2019 09:43:56 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1565702251-17198-2-git-send-email-israelr@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_094359_469423_31E9C69A 
X-CRM114-Status: GOOD (  10.99  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Max Gurtovoy <maxg@mellanox.com>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> Added 'tos' to 'connect' command so users can specify the type of service.
> 
> usage examples:
> nvme connect --tos=0 --transport=rdma --traddr=10.0.1.1 --nqn=test-nvme
> nvme connect -T 0 -t rdma -a 10.0.1.1 -n test_nvme
> 

What if you run this with a kernel that doesn't support tos yet?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
