Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 141ED854C9
	for <lists+linux-nvme@lfdr.de>; Wed,  7 Aug 2019 22:54:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mC9o2QQ1+6VAfyc597jCtJ5QgYU+T2GKXPrXcN7t3vc=; b=Pf9kD8bKnA3j9n0xR5h2uugEO
	1pODXedgwZiZnWN6AqVKCmftRncZI9wspi9xrukWjdPbA3cfomyPeZs0mNrIGFhzonQvs2jfHw1k+
	+u3kM7SXSVa2IAK0UmDIa7EIqn+znVQl1N1KmFtGJNkDPemVMJ12baitA40N5CUopez+SLQNXkrVO
	Rt5vzvOq7xgsvFqCm1oNFdXWxvg/zd1OhgC/BMr1LZgm8ROhLnwr6VSKAJm9v0ZvS+Wbzf0Ip5m47
	cToD29edz9XGnmbI4kMoUzI82aBrr+YtyvRZoqYsGRjlUT+xAdRYiYyNJpIPQXP9MPCD1KwG0lQta
	CjL9szhsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvSx0-00085m-Jl; Wed, 07 Aug 2019 20:54:26 +0000
Received: from mail-pl1-f196.google.com ([209.85.214.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvSwr-000853-MA
 for linux-nvme@lists.infradead.org; Wed, 07 Aug 2019 20:54:18 +0000
Received: by mail-pl1-f196.google.com with SMTP id a93so42485274pla.7
 for <linux-nvme@lists.infradead.org>; Wed, 07 Aug 2019 13:54:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=TF6/LqCyt0geWH0YB3qdCI28OHCcHEcHTILQwyAeFPI=;
 b=XWNJGLVZSeEr0uc8QRGnrYB/9pF1A7DT54vmH8B4hQoXMHQgauMzxw07bl4oDBK2dT
 qNhEnIjWddLvuzDsi0Pv/7MUDvIGQRYxiPm/6Tuz/QOMjUShsaWZ//H5Azh8mNHLzscz
 4FZHzO4mAIrCSLP5SbdlkBGVgt6Fh724oSM3ek7e63MjNbHzIQIewtlHzk93Hp8W4ZCq
 b1elYEbEWrHTok2Zi69130R4HBOwUKi/3OszJs0S/0VIkYaNNlbmg/a3sqfv10Cxl/FX
 d5Ndl1S8g9kwy16Kvs/5w3xHxph7ETdqNCcEZctgNhNIKjMSDyk3tV876F4wsJzDTzdE
 9dxg==
X-Gm-Message-State: APjAAAUgy+zma6gvIcEkIbLndIYrqHN91Hei7BLW5AUJUXGHZ6QJi4Ud
 EZfZzRYbD1hyOsa7T9k0x24=
X-Google-Smtp-Source: APXvYqyreZ/7dfS7RTzevo8SYp2bFkA7a690iTcBuOcvNxFUEXOLo1oYWrX7qDSfgrJxUTYckt21pw==
X-Received: by 2002:a17:902:e512:: with SMTP id
 ck18mr9444071plb.53.1565211256710; 
 Wed, 07 Aug 2019 13:54:16 -0700 (PDT)
Received: from [172.16.27.234] ([4.28.11.153])
 by smtp.gmail.com with ESMTPSA id a16sm100705972pfd.68.2019.08.07.13.54.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 07 Aug 2019 13:54:16 -0700 (PDT)
Subject: Re: [PATCH] nvmet: fix data units read and written counters in SMART
 log
To: Tom Wu <tomwu@mellanox.com>, Linux-nvme <linux-nvme@lists.infradead.org>, 
 "keith.busch@intel.com" <keith.busch@intel.com>, "hch@lst.de" <hch@lst.de>
References: <1564970259-12279-1-git-send-email-tomwu@mellanox.com>
 <8cbab0aa-51c7-b33a-46a3-5a85debc023c@grimberg.me>
 <dedb990d-ef45-0cd9-b662-e98b911fe45a@mellanox.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <a27bc24d-6806-8fe9-0b76-8e01d8d35464@grimberg.me>
Date: Wed, 7 Aug 2019 13:54:15 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <dedb990d-ef45-0cd9-b662-e98b911fe45a@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_135417_719626_B546A98B 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.196 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.196 listed in wl.mailspike.net]
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
Cc: Shlomi Nimrodi <shlomin@mellanox.com>, Max Gurtovoy <maxg@mellanox.com>,
 Israel Rukshin <israelr@mellanox.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> Hi, Sagi
> 
> when you say I can 'modifying the actual retrieval', you are try to
> suggest that I can do the changes as below, right?

Yes.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
