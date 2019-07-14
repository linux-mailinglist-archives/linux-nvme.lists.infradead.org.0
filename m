Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C827C67E2A
	for <lists+linux-nvme@lfdr.de>; Sun, 14 Jul 2019 09:28:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PyfmArO5T45maAXOrUI8xozUmAHn3yy0OIUBhgCUG/I=; b=AaGepDrx8IkkWIDvOcyaLfW/+
	F80LM7p10B0pCyFUe5JSZlA6wdNm2V4+x0VoPidM3KFhDOMr2CJ12ecb/Uf4N7h7ht5wp9SXjcixj
	I3BhylEdmKcsRSvGc5uooocFpbSL4+7VOxztUwjG+vGrpAe4dN7AU99C3SGrp/NDbnexNwawHZa53
	WHY5YEn2IO0rR3aO/grlMJlZGLwj0oAWQyL76NaIMrIFo4R9jUdRYFJIzCUbi+ZXdy64kebNbw63d
	GE841SK1yjvNbMKyRh/f5N2jdp2g0UpoXaTjAi/Wpld6q3vWwbqfsxH48iO33/Yvq+nA7/8HtaoXF
	DK9RooWpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmYvc-00077b-Ix; Sun, 14 Jul 2019 07:28:12 +0000
Received: from mail-pg1-f196.google.com ([209.85.215.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmYvM-000771-Hs
 for linux-nvme@lists.infradead.org; Sun, 14 Jul 2019 07:27:58 +0000
Received: by mail-pg1-f196.google.com with SMTP id w10so6301940pgj.7
 for <linux-nvme@lists.infradead.org>; Sun, 14 Jul 2019 00:27:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=CWGPaVP94uc5QsTWnEFRq6FdYsgfLgNy7Xpvc0ZJrc0=;
 b=Kx2j4b4DrEnQX7BUdrEo5aopjh5tLNkFKPT4A6kqtEKu3jEt3sHOA9A51OI/0dyKL8
 d1h0LnCPoOhruMtOhwkS0b63GqMznlq4vuuE2lli0wvXJlaM36dnBeChVqHwyu7Gm9MO
 AXPNcAfFcjeBYu/ApL4tIhoAC+7DYkbb5f51Qu+2Th9EJtGWPbvsca1sNd187NdYQmg1
 HzRzZmdLkvjh31TkiWzG3hAbEsi8Dpif4LsI6VndP1uWdxOPPwPTi4ZZhKdq1jIy0S0s
 8T8KHqJbcHiGZMXn5fckWUd8Zh3Ght6oJ7wTpAkNgTLKc3kOusrezEP7jwwr1qPc8H95
 Au6A==
X-Gm-Message-State: APjAAAXJ4iwo9tLeKF2Psf6lT4mcZZT4Eibl/nTAAFcIiBxp63ylVHLJ
 yLybDZfMhma+Sy/es76V5CgeWdEW
X-Google-Smtp-Source: APXvYqzrUADNBvvsMHgYM/zbChmng2QTM5auLsoSdz69Va/tLu99cApWpWop8ZGjWygay7FX54k/5A==
X-Received: by 2002:a17:90a:8688:: with SMTP id
 p8mr22553517pjn.57.1563089274754; 
 Sun, 14 Jul 2019 00:27:54 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:10a0:43d6:25f7:7bc3?
 ([2601:647:4800:973f:10a0:43d6:25f7:7bc3])
 by smtp.gmail.com with ESMTPSA id m31sm14565521pjb.6.2019.07.14.00.27.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 14 Jul 2019 00:27:53 -0700 (PDT)
Subject: Re: NULL pointer dereference in nvmet_rdma_queue_disconnect during
 bond failover
To: Alex Lyakas <alex@zadara.com>, Max Gurtovoy <maxg@mellanox.com>,
 linux-nvme@lists.infradead.org, Shlomi Nimrodi <shlomin@mellanox.com>,
 Israel Rukshin <israelr@mellanox.com>, tomwu@mellanox.com
References: <F7E28AA1609E4FC495B5E8D4250E7DEF@alyakaslap>
 <90599926-b7ec-8431-a7aa-c44fde08b5c4@grimberg.me>
 <ec4fb8df-98c4-fffc-7581-5245c397d16c@mellanox.com>
 <66ACE500178B47D6B39F23FE98D22363@alyakaslap>
 <b6443a7c-4be6-3dbc-0535-a8ded3261c50@mellanox.com>
 <8ab1fa5e-2d67-5128-93b5-2f32704869e4@grimberg.me>
 <28046c97-c271-dff4-5252-4b5668c7bfb7@grimberg.me>
 <B3E9005C4E4645628157970AE2A385C4@alyakaslap>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <fbcd59ef-9c48-4e1a-4802-1cae33c5f671@grimberg.me>
Date: Sun, 14 Jul 2019 00:27:52 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <B3E9005C4E4645628157970AE2A385C4@alyakaslap>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190714_002756_592583_13218F53 
X-CRM114-Status: GOOD (  10.19  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.196 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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


> Hi Sagi,
> 
> Which kernel this patch applies to?

its based on the nvme tree, but it should apply cleanly on upstream
5.2...

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
