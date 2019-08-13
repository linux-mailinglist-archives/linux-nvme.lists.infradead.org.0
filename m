Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D0798BEB5
	for <lists+linux-nvme@lfdr.de>; Tue, 13 Aug 2019 18:36:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TXVQYpaTMLez7bavgkchAjZw2Qgr3COopQ/01D+p2tU=; b=R9dGcy7WTFUfeXZemeILEYGbJ
	4lKhdb8KohtRbnNrybg69CIb0TyrV2q3tsKcUMRkf+PB//Ukpn6rYoK6PzAVFcp8kAwUuSWGqLV7Z
	UPemdpk4cfFHypKH1EtVyCFyH5osDIuhf23SQB+ZE96c1tz8ZlBjBXfKZ1/mXBJ0M7y4sTePB4UX9
	fMqcAmzZ6gfFbRWpfIijWfTUWKHj++PXyQ4K+KGPw90Ra56x90sozcLx8ajcQ5OLpxVrI552W+S1Y
	CS+T5KUViFgd0vPZzctXm9IAUP54puOpKYbN1iY7iOdVST6G8NnY0LKdpujpr1TZ1Y3cWPQZU4RCc
	UedFeM/8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxZmU-0006jr-Rp; Tue, 13 Aug 2019 16:36:18 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxZmM-0006jO-2D
 for linux-nvme@lists.infradead.org; Tue, 13 Aug 2019 16:36:11 +0000
Received: by mail-ot1-f68.google.com with SMTP id m24so21908795otp.12
 for <linux-nvme@lists.infradead.org>; Tue, 13 Aug 2019 09:36:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=4a+U8WL+FBy8BYTmH62GQFHRGrsovVeVMNGME156CXs=;
 b=IJmcYORFdJbfu6F4Ug6EeMXy1XR8q9pIbrc3JdiOnCDOcxdzwo6DWWnfKxf2fsgs8l
 6s/j7Ic9HK6K2e+ws9i3PyNYnz5gOp0yrcGnp+td77CsmSub8gvOHQq+ysEfCJHd6EnY
 iJT6BcikDC7VDU4VISwbiGHUs0LoNvEF9xOUAmZGxQW9s0ITamc6FgliU4kTozUu0tp5
 ZLZSPW+Uyh+tCljfvUZAYm4TeT29GtfuBXR+IO6/JxJoLbcuUkWFZRS3bTNFEdzW5Eol
 91Vq75x2Ck6BDYGeKuSkqySMVvLQsocFv9NulBOW/w2QoAHD9g/hULhNMGtejzJ8gm86
 GfXg==
X-Gm-Message-State: APjAAAVC8MKneY43WcFlvg4Srz9urZp+aiOBhMrd+St92dPKU4zN06WF
 Nv66MR9nEtcYXfpil4yWoMa74p/J
X-Google-Smtp-Source: APXvYqyOkmafln3Id+oBnsHwHY4NvnlWqR9Jy8sfBA8PFhGvDAgCv2QBVKkWdXvC5z6yNdj61LZDtA==
X-Received: by 2002:aca:b303:: with SMTP id c3mr1887032oif.95.1565714168656;
 Tue, 13 Aug 2019 09:36:08 -0700 (PDT)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id x20sm2610858otk.79.2019.08.13.09.36.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 13 Aug 2019 09:36:08 -0700 (PDT)
Subject: Re: [PATCH] nvme-tcp: Make nvme_tcp_mq_ops constant
To: Nishka Dasgupta <nishkadg.linux@gmail.com>, kbusch@kernel.org,
 axboe@fb.com, hch@lst.de, linux-nvme@lists.infradead.org
References: <20190813090253.8813-1-nishkadg.linux@gmail.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <9e4598f0-dfc6-0fa6-8081-dbd568c39d9a@grimberg.me>
Date: Tue, 13 Aug 2019 09:35:59 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190813090253.8813-1-nishkadg.linux@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_093610_101431_4EF2EFB9 
X-CRM114-Status: GOOD (  10.94  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> Static structure nvme_tcp_mq_ops, of type blk_mq_ops, is not used except
> to be assigned to field ops of variable set. Variable set itself has
> type blk_mq_tag_set, whose field ops is declared as const. Hence
> nvme_tcp_mq_ops cannot be modified after being assigned to field ops of
> variable set. Therefore declare nvme_tcp_mq_ops const as well.
> Issue found with Coccinelle.
> 
> Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>

Looks fine,

Can you please respin a patch that applies cleanly on nvme-5.4?

You can add my: Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
