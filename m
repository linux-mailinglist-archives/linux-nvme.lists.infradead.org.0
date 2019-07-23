Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1AB470F5B
	for <lists+linux-nvme@lfdr.de>; Tue, 23 Jul 2019 04:53:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Q2YfbPwdXf0wnlPfOoV26+1PlNnzYWZW08+NHh794HA=; b=ayVoZK8R9g1i8u4Wt6b0aU6U6
	K/t5aDsWgAMTRxBqxTKJrYnOx11sJ2bnmtC731QAlL1qaxYa5/13Al1hX5L5u729Rn4Kk6veUMOu9
	OnuONJDTTTJe9Vw02Aj2HK2JpjFBPPrDuv13OnxoekFEtDLY93rnZCHUrdyeX58TNVZVGoLcWH8xA
	uYFPXjSM7jeUxhWphHqnIJaBv7bWaQFKMiQinMkHqPBm1BZlg8qarXCZI9bzJT84TMXwk/NMNJzIo
	mTjxm1g7/ojxUvSWIIbcayLRIpcT7axj5XVbNVY1VXAHIF14GYz4kMxLUYhsTKQtVFyB4/KXyIBEE
	8FuIeO0zA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpkvn-0005Ur-Te; Tue, 23 Jul 2019 02:53:36 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpkuf-0005Ki-LX
 for linux-nvme@lists.infradead.org; Tue, 23 Jul 2019 02:52:29 +0000
Received: by mail-oi1-f193.google.com with SMTP id v186so31178467oie.5
 for <linux-nvme@lists.infradead.org>; Mon, 22 Jul 2019 19:52:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=UlMnKcU1n2LnO056FmI8HcLgF0YdiOp946rQLaJjvXk=;
 b=tBlkyGCgOH+nAe8f7HZqqgXMbPnTVpMZzQ9BmIf2TwxIzTnzGBHw7rEGjU6vic5u8Y
 kVJQq6uy6aW+uRPwMGoQNp3K+ako/mGvbz7D2bSZmU+XO7EtZZhtMMm4F2qds1pUXGWn
 X4lY9zJOkuCgi541u0UciRmzOmSWxi4L898Yp3kBYN8WDu0jHnyHElEp5QOWOnWp2Yum
 hJP0bZuztt7SfTY7NtHKSpOxPOQbMGssAW1D661mv/y74HgryaOh4ef1kIe8L9ZQKKsH
 lIUitm+fktlQE0lATin3BPAktdKMHk4IIQG8eOcJI0oPi1x/8qKJmvR8Spoj5xus4A6S
 lWUQ==
X-Gm-Message-State: APjAAAW9c9E6ZehpXGga737LA9xUeX+2fQdKayOICu0EYSBsRmkJPzWh
 1u/Gm1rUVdgg0qiWjVoM6Vo=
X-Google-Smtp-Source: APXvYqwZYAOPKQuHe4/kFYmPTNnwzNxazUqce3i8GWR89jDJ+gSZy1Q8+/PP9Vi6PbIw90ywPllbnA==
X-Received: by 2002:aca:4f52:: with SMTP id d79mr32978730oib.15.1563850344480; 
 Mon, 22 Jul 2019 19:52:24 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id n26sm14503811otq.10.2019.07.22.19.52.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 22 Jul 2019 19:52:23 -0700 (PDT)
Subject: Re: [PATCH v2 10/10] nvme-cli: nvmf auto-connect scripts
To: James Smart <jsmart2021@gmail.com>, linux-nvme@lists.infradead.org
References: <20190719225305.11397-1-jsmart2021@gmail.com>
 <20190719225305.11397-11-jsmart2021@gmail.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <27688d4f-49b1-9fcd-d315-d0a33ecd248d@grimberg.me>
Date: Mon, 22 Jul 2019 19:52:22 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190719225305.11397-11-jsmart2021@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_195227_078869_429B660A 
X-CRM114-Status: GOOD (  11.66  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Simon Schricker <sschricker@suse.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>   Makefile                                         | 22 +++++++++++++++++++---
>   nvme.spec.in                                     |  9 +++++++++
>   nvmf-autoconnect/70-nvmf-autoconnect.conf        |  1 +
>   nvmf-autoconnect/70-nvmf-autoconnect.rules       | 18 ++++++++++++++++++
>   nvmf-autoconnect/nvmefc-boot-connections.service |  9 +++++++++
>   nvmf-autoconnect/nvmf-connect.target             |  2 ++
>   nvmf-autoconnect/nvmf-connect@.service           | 14 ++++++++++++++
>   7 files changed, 72 insertions(+), 3 deletions(-)
>   create mode 100644 nvmf-autoconnect/70-nvmf-autoconnect.conf
>   create mode 100644 nvmf-autoconnect/70-nvmf-autoconnect.rules
>   create mode 100644 nvmf-autoconnect/nvmefc-boot-connections.service
>   create mode 100644 nvmf-autoconnect/nvmf-connect.target
>   create mode 100644 nvmf-autoconnect/nvmf-connect@.service

James, didn't we agree we are going to split these into local
directories: systemd/ rules/ dracut/ ?

I asked this for us to be able to add more scripts easily that
would not necessarily be related to autoconnect...

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
