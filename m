Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E90BC151F6
	for <lists+linux-nvme@lfdr.de>; Mon,  6 May 2019 18:54:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=o5iN4Dp4SOcpjYjp6tFvIc93w0Q1P6zxjba2GlZdJnk=; b=sJC1WWLaOdU9aAA24VQ66ihpB
	bFU3BGpM9HO33cm/ANUQpUiIAkeMqKeLwmGpA6wZcTPBJKJ/jrrGZG0O17j5arz0iU24Wp9SciJIp
	cdkt1/smGYL6LixmnJ9Rhyt1SRm9DeurTwNkuoKFmqbJ7lLgthbnuXLPuCosSLau28YodYNpQiWdg
	01zxD8y8IPL997p8duljP2ZRmeqbPYJ6HLbcp5vF4NuCRi9dUoSbuPcqDGndXa1LKxAgxMb0jA7Fz
	r8AUBmkO19dLesNIIp1kOZ4f8ThKGTHg/n24nUfAm6loTUTkXFjHpUn3T+qhQUM8AW01XS1opudPz
	IimM3RgQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNgsh-0001lG-Lv; Mon, 06 May 2019 16:54:23 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNgsY-0001k3-TA
 for linux-nvme@lists.infradead.org; Mon, 06 May 2019 16:54:16 +0000
Received: by mail-pl1-x641.google.com with SMTP id d9so6658695pls.8
 for <linux-nvme@lists.infradead.org>; Mon, 06 May 2019 09:54:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=KCEwrmU0WXfK4atvqThwEnw4yweGWf/NWKBCEgr7l14=;
 b=VVtEISd8kVc5rlPdF+mZWA81XMq/W5DTFtorR+2CvKU2ht/SZDDP3k4/GtF/5co+5x
 ouCRIr9lGEYjmCi07bW+9pvG78SfTtVuJPk5ee3d1mz9ejfdnULNyWLTcIyFkHNfxKe6
 6TxLTh9qM/Pun6UIaHvmFrJNL4MprtMFrepis1FkWY1K9FAleDp4XCpFGLcIOFWL/rfC
 R3kHoHZ+ANqoXcezYatpah2FE8pZ5hT0aZPcy0NZ1dYnDYgH3lME2AGLJF/SUaSM4Klu
 e6p0FcFzCV56yLydglu1xcN2paKOXU1jdIqb2rRKBNTJHK/HFUa9enW1EGzHP3zSs1pF
 7LnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=KCEwrmU0WXfK4atvqThwEnw4yweGWf/NWKBCEgr7l14=;
 b=C10m7YQSW1r9iid25wtyl8sZiuFxc7XdkYLKZbhG4VkS6rYvs7jYzeNHXiMCVJdoH8
 gCVD3uvZVf4WpNO77t1/BBdIiEaF+LtEa8lwZSJkm3ynTf6t2x5+IBrxVmjEi03w0eod
 vTpq3xnBT2Sv3vndDK4XRskPuet8hveO69m6TGarxmP+5Mt05U15myl2RfgUC1Libh9h
 ubFKE0x+p9pYod6yB3Jzt64s9Sd0s0nqMkyTCs0k1wdA1z7eRY5RykxbdZJ2YHFfyYk0
 6nHxy/ar+8aI9ox5JpoHUjt7/0LbECZJ1ZByvTlQ2ZNriswhasY+VagaCXKyZGKj5py2
 UMJQ==
X-Gm-Message-State: APjAAAUSSamdLe5hELAtwLbiUnOzfG3wN/d4XWSdE+XbiAQggtZUwJ12
 wFoGVLMZ6MVWjK7MBZD6LmWJMxGRjMI=
X-Google-Smtp-Source: APXvYqyOcTkcFfVsQy6lsNiOQwe/uSzxHEEc66MzeSc7kTFyzoO3k2eaJ/pE95fgn4pIQpzSEzzpIA==
X-Received: by 2002:a17:902:9a46:: with SMTP id
 x6mr33034506plv.71.1557161654227; 
 Mon, 06 May 2019 09:54:14 -0700 (PDT)
Received: from [192.168.0.6] ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id c19sm13731453pgi.42.2019.05.06.09.54.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 06 May 2019 09:54:13 -0700 (PDT)
Subject: Re: [PATCH 1/3] nvme: 002: fix nvmet pass data with loop
To: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 Omar Sandoval <osandov@osandov.com>
References: <20190505150611.15776-1-minwoo.im.dev@gmail.com>
 <20190505150611.15776-2-minwoo.im.dev@gmail.com>
 <SN6PR04MB45274C423AA7C3CC3DBB5ED586300@SN6PR04MB4527.namprd04.prod.outlook.com>
 <a66b775f-9a5f-fefc-ae29-c86678e66463@gmail.com>
 <SN6PR04MB45272BEB18B3ADD95DCB42AE86300@SN6PR04MB4527.namprd04.prod.outlook.com>
From: Minwoo Im <minwoo.im.dev@gmail.com>
Message-ID: <cfa4d48d-ce13-0ace-cf5c-a3d0d1f4cca7@gmail.com>
Date: Tue, 7 May 2019 01:54:09 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <SN6PR04MB45272BEB18B3ADD95DCB42AE86300@SN6PR04MB4527.namprd04.prod.outlook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_095415_000065_2718F633 
X-CRM114-Status: GOOD (  16.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Johannes Thumshirn <jthumshirn@suse.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> We need to get rid the string comparison as much as we can e.g.
> in following output the nvme-cli output should not be compared
> but the return value itself.
> 
> -Discovery Log Number of Records 1, Generation counter 1
> +Discovery Log Number of Records 1, Generation counter 2
> =====Discovery Log Entry 0======
> trtype: loop
> adrfam: pci
> subtype: nvme subsystem
> -treq: not specified
> +treq: not specified, sq flow control disable supported
> portid: X
> trsvcid:
> subnqn: blktests-subsystem-1
> 
> Reason :- we cannot rely on the output as it tends to change
> with development which triggers fixes in blktests, unless
> testcase is focused on entirely on examining the output of
> the tool.

Totally agree with you.  nvme-cli is going to keep updated and output 
format might be changed which may cause test failure in blktests.

If Johannes who wrote these tests agrees to not check output result from 
nvme-cli, I'll get rid of them.

By the way, Checking the return value of a program like nvme-cli might 
not be enough to figure out what happened because this test looks like 
wanted to check the output of discover get log page is exactly the same 
with what it wanted to be in case data size is greater than 4K.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
