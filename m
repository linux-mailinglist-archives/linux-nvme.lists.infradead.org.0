Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE64670CD2
	for <lists+linux-nvme@lfdr.de>; Tue, 23 Jul 2019 00:41:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uTrZoRPUiNFgn+vEJVF2UCDdxAAF2ixVvn704J2I2Ho=; b=O3XZ+4K3cHjeUe5rslJx8yYdu
	IVXEXLN+jNtkcFBwVItejoljMhiFw3zn3z+fvuduq32BrCA46ijVaXpYOETQ/s+w44zc+2DQtqneI
	Sx1GPDaIk03d79+T3VqxmjsJilOQAz1FB0/ZfgOnJ+OFILGouT7AkGNmFjyTy+UnNUbIlA+n49x68
	/oM9pAyKbqBUcOxh2LhEikv3gzdT7sbeFq2wpGqeEdehu2nUg6aUt4xOoJH52nTIwNYh8X/iuNJsW
	F+daRT5nQ5rDazCkANxje0lt/iPwnAG+9KUtEz2umS20/6CD6CReAyjlPjgfUbgeXM90Ri6bSlZui
	9muyfKP8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpgzl-0008Cz-9C; Mon, 22 Jul 2019 22:41:25 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpgzY-0008CU-0m
 for linux-nvme@lists.infradead.org; Mon, 22 Jul 2019 22:41:13 +0000
Received: by mail-oi1-f196.google.com with SMTP id m206so30831628oib.12
 for <linux-nvme@lists.infradead.org>; Mon, 22 Jul 2019 15:41:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=KxySOH2H6QHbFTyTiHIrsmJF2z/Lk5hraHaUDzWHNZY=;
 b=Jm5Yt7qD93gXYcrOygVlZZnEaoI0wEGuOD0jsjD7hGUgsefTmVWiFK8tadwgs8jktw
 09SYTc90zeYDB+oMSRjUVRVuvH54Ot49WiseOJaBCUEVmwv0jSrrbbgm7ADwopdRzPJy
 Pawts63VDv/f3J9T/qwEj/ZBWWU0GYRQyJcOs+RCKKaR6+btl7ZiQlzAfXWa5nwih1Rz
 w4TwANyImI76EUmn3ti5AL6yWtHJBsc2xIwDOFzi9NW3rKnaW+NxkNDG0uH7GE6vZ94t
 YGNwQQofVDeFU4YVO/KC8yG3tXaeuEDKufeqYgkfytV6Y5wvHJdOBodWYT2oU1dwrAes
 bhUg==
X-Gm-Message-State: APjAAAWWBYh+wTBFojRaipjDmhQYh1M75ncxPJlVF47RN4+ylyUu6qUd
 cgPVs5P61oH/jPab8UNIbIRbLg66
X-Google-Smtp-Source: APXvYqyTyrA8jnvxjtoNmXA49giwzN6ebT4i4LKS2e+E1EnYmfqisysDcmYvufmqsHtdatRED3qKEA==
X-Received: by 2002:aca:cdc8:: with SMTP id
 d191mr34676051oig.151.1563835270815; 
 Mon, 22 Jul 2019 15:41:10 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id s82sm14167479oia.22.2019.07.22.15.41.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 22 Jul 2019 15:41:09 -0700 (PDT)
Subject: Re: [PATCH v2 07/10] nvme-cli: Add routine to search for controller
 with specific attributes
To: Minwoo Im <minwoo.im.dev@gmail.com>, James Smart <jsmart2021@gmail.com>
References: <20190719225305.11397-1-jsmart2021@gmail.com>
 <20190719225305.11397-8-jsmart2021@gmail.com>
 <20190720082504.GG22395@minwoo-desktop>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <f020727d-28c9-ff5b-3caa-f4258284bdec@grimberg.me>
Date: Mon, 22 Jul 2019 15:41:08 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190720082504.GG22395@minwoo-desktop>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_154112_581124_2F121E7C 
X-CRM114-Status: GOOD (  13.55  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
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
Cc: linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> James,
> 
> It might be too late to discuss about this argument, but did you decided
> to have (struct connect_args) as a parameter for this function?
> 
> Sorry for not giving any thoughts on the following mail[1], but I would
> prefer not introducing a new data structure for this because it's just a
> bypass argument from a perspective of find_ctrl_with_connetargs().  But
> If you think it's okay to go with, then I'm fine with that too.

I think its just fine with the connect_args. This can also extend to
other search/match functionality we may need in the future (that is
insensitive to short/long args).

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
