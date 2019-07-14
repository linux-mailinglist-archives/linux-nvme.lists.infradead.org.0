Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5731367F6F
	for <lists+linux-nvme@lfdr.de>; Sun, 14 Jul 2019 16:49:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=D4cXOrw20ccYKtBvMnjTyF/ML87xNhgPY84w2F3cxwc=; b=Ndn6RoBEFIXL3iaYfUqIJzEOs
	kzfgNiIphZBDcJynKiuy3TJ200bgp7w6tE8YxarkRFJSi5xrp7dJmoygJVwhY6CLQQ9adl4pbWZS2
	9PDcOPI7gevGpfEiVmvZhSvPxz7WqiJxLenWTU5L69/Mh00PRCftrFYvEla2qjeV7b3e/eNMNbdp4
	c9SNApDqV1O8upHroLwpg1rk96J5E4Jdr07MCjYRcUU36rDFZq/GfDAwK7vVpjkJmsBLxmYt/Kvy3
	iLACTtaNTqk4Vslr/WvSK8AwFRgdztxQZyCDTtNLuVeFRpwG2CIz3qjg9YU2DOeYultYJyKAnsX3v
	pbrxM6Jnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmfod-0004aK-TP; Sun, 14 Jul 2019 14:49:28 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmfoU-0004Zn-5N
 for linux-nvme@lists.infradead.org; Sun, 14 Jul 2019 14:49:19 +0000
Received: by mail-pl1-x642.google.com with SMTP id c2so6999647plz.13
 for <linux-nvme@lists.infradead.org>; Sun, 14 Jul 2019 07:49:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=pRO7+XFJ3CgL/YMo6cY5bIOIoNIAPb/vPg6oXURGLPk=;
 b=BaiLQE2OdK7ZGYn9ydpxw4/cp+QCPg8H1trgZy9S2UBUiRojSvSZPURlNHFnb0dD4x
 v8N9SA0LmnzehOmx8qIn2XidJUVGIJTPyWi8ESh4kBlbQWmQUq+0PlfoPcD3GQgOHYTn
 SVfrZrRxovDDPNqDslmbpVCJ//NBDzzW146SQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=pRO7+XFJ3CgL/YMo6cY5bIOIoNIAPb/vPg6oXURGLPk=;
 b=GUJQMR33K0DXO+obsX4xcFoNfQdh5/CXAS9mHuojCsR2kvhWTr2ONIuL6QjTAOGkga
 1j8EaXyCsgQQQLYd8O+56UaUDoITYbfMsZa0hWK9TawL+hNGEpmp7zYb7kdPAnPguhs3
 OpiR2VeHqPySImsVYs1obdMB9hvUzqP+Gv/w3dXPUQJ1KXQagRHxTRMrKeKH85AuDqym
 41SxRW0vHhIrWeXhsSpJv67lS/fEKEUbc9JdBhgSjFOsYd/ROOz45AkeEaRgWi6nqOxt
 Nivz70bjTgCWeDuzfg7eN3MwXq/Ea7ubOx6s++U8hKcdiRA7q6R9K36I6q/LBsajrKJT
 WGMg==
X-Gm-Message-State: APjAAAUAhOPSE5y43Vs3TVkyP/jbse63F7RuFdT+6zYWsbF35fekiEM0
 tekUBQYAqdWiPYSsR9wrt+DqUUprpBjgORTQsHQPGct46xranb2qEAOpGADl5Rvqe5yXeX6Qp1p
 OOhc5QGH+BlcXeb8eNcWV+aQBPn4GwXxt8mMcT5k20dHt+GRF5R2MOEsLkBMgmX07ImBFBWf88q
 NBEAKyiQ==
X-Google-Smtp-Source: APXvYqw6MOyI0rfWmjneChOyHzhHQzUL15YdIqfj5S/rz4VPRKhhyScb7L9rL2ugFda574VJ0jOIMw==
X-Received: by 2002:a17:902:29a7:: with SMTP id
 h36mr23829181plb.158.1563115757044; 
 Sun, 14 Jul 2019 07:49:17 -0700 (PDT)
Received: from [10.230.29.90] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id v184sm15297174pfb.82.2019.07.14.07.49.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 14 Jul 2019 07:49:16 -0700 (PDT)
Subject: Re: [PATCH rfc v2 09/10] nvme-cli: add --quiet option
To: Sagi Grimberg <sagi@grimberg.me>, James Smart <jsmart2021@gmail.com>,
 linux-nvme@lists.infradead.org
References: <20190712003140.16221-1-jsmart2021@gmail.com>
 <20190712003140.16221-10-jsmart2021@gmail.com>
 <46dcab64-c4f9-74dc-b75c-4f4b8926051d@grimberg.me>
From: James Smart <james.smart@broadcom.com>
Message-ID: <898fcfa4-e70f-fd0d-0905-cc4af74d4cda@broadcom.com>
Date: Sun, 14 Jul 2019 07:49:14 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <46dcab64-c4f9-74dc-b75c-4f4b8926051d@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190714_074918_209869_4CE75A7B 
X-CRM114-Status: GOOD (  12.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 7/12/2019 10:35 AM, Sagi Grimberg wrote:
>
> Q is already a short-arg (queue-size). Lets have it 'S' (stand for 
> Suppress). 

ok...

> Also, when I tested it locally for some reason it did not
> take:
> -- 
> Jul 12 17:30:00 nvmc systemd[1]: Started NVMf auto-connect scan upon 
> nvme discovery controller Events.
> Jul 12 17:30:00 nvmc sh[2767]: Failed to write to /dev/nvme-fabrics: 
> Operation already in progress
> Jul 12 17:30:00 nvmc sh[2767]: traddr=192.168.123.1 is already connected
> Jul 12 17:30:00 nvmc kernel: nvme nvme2: creating 4 I/O queues.
> Jul 12 17:30:00 nvmc kernel: nvme nvme2: mapped 4/0/0 
> default/read/poll queues.
> Jul 12 17:30:00 nvmc kernel: nvme nvme2: new ctrl: NQN "testnqn2", 
> addr 192.168.123.1:8009
> -- 
>
> Adding print to add_ctrl:
> Jul 12 17:30:00 nvmc sh[2767]: errno 114 quiet 0
>
> When I pass it manually it works, but not from udev... Not sure what
> is going on...

?? I'll check it on my side


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
