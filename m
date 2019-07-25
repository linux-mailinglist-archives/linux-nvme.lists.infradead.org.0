Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A36174F48
	for <lists+linux-nvme@lfdr.de>; Thu, 25 Jul 2019 15:26:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IfqxAKzrb5u9Zt54ALXuSAY+8/OZhTwfCTzwDubHg0c=; b=UZURXfdq4GkLf2
	2M2Egn8TKmCu31cBWlwWqJeNOTDqkCkHgEv7kaf8G7Z0dcq4yku2vMALufKGlxxFhRXZJPyq371eT
	6vOGP58A82rnj0CIwIVyDgdDK7sTOvrzIPLihOEfmWj6z+HflQqMnuXTUXmmM+/4LqxfNVZ7VWvoE
	N3ZmGGm/bYINACCa2EPJGUU24c2XeinpJxb8LCk09iMBpD3FB0U9wUZaI1LTCUYbYUcJqcYVl7nUr
	c8wWLnt0SGEFQQCU9f9TeUisMspyCUz794Eox4WOyXrl8JPB8evlr+4/vy0wGuZZ4nFYjkkFxO63h
	/e0rhpX7CeqGl6FI2ZGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqdl1-0002cS-Qs; Thu, 25 Jul 2019 13:26:07 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqdks-0002c7-IF
 for linux-nvme@lists.infradead.org; Thu, 25 Jul 2019 13:25:59 +0000
Received: by mail-pg1-x543.google.com with SMTP id f25so23038485pgv.10
 for <linux-nvme@lists.infradead.org>; Thu, 25 Jul 2019 06:25:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=QjkJ4hYtjbvg/A3EQoGZ+6rCeaQ24J0TM1n/KNM3qTA=;
 b=NY+pPIb6/9csaEmSg0v1GECZ9GNOI8VwaMYtb/vkGtlII3Xq6gZA7FwFxiaXma25EW
 Hn0XpNPF+5q0BQuEhnbkeYyZaL8Tfc3QAd/Nghwp4f4S8ZoxMY6gA7lM2eDAJmNu09j6
 h1Y4LKKGwhXGBP9uRc9HJFu9aBqbKy5riPb/K726J7782f63QXw3tqUrKGOp9IrN3Tw+
 WkYerw1vudNqQJFyw9jYSsm6/vGxehzj3XGVj2YBLPp8KWhB1U3wSfk86SlMugTG0V42
 FhoKNej2qUPvWaKnKpNoJEPcglvVQY3ANBt1Wp1FlIYj8d8oXKXys5LlkHV78VziDmQ3
 1MBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=QjkJ4hYtjbvg/A3EQoGZ+6rCeaQ24J0TM1n/KNM3qTA=;
 b=m3wRsAsp9PXBEt1AW1Fn4KVnbVNxvLp0oTIbiVs8FTUuFo/q3ggUv0tqS9zo6Ceyn9
 c0SJh+yFmMa3a8QsHkwRE2Hmnm9WhORRwNXsMqaCvzm5uBR5L9uA4C2VDlcc3+iNshQX
 U0fcNJ4QiGp4xGeydVSfhNprLsvQSC2N/JjsN53x4R83ZtOzR1P4gZ3E/QdBgVNKkU5H
 D6rzHxTyBiilIZ9V9u6wA4eaQNvOttLkaN6SCnbs0qYwhZ5pg5oujjvbcem2PQrP1YyL
 639HNVWMxaoSVAIvlybLgC21yZSs1FCCu5Wl0U6XHEaqjCiq1giAFzFU2xrUJo2Gqiwx
 3EOQ==
X-Gm-Message-State: APjAAAUWZ3eKzpBH2Z7DghrZ/PUvRFxd6i9+8Lkx44btDgY91D278np2
 wVIOufb+6JVHFteP7d075IQ=
X-Google-Smtp-Source: APXvYqx0J6PWFXDMHwZZuuvHqjrpXUviIZuAyniUZLcqFibyoJTavT5ZKCugyZ5nmURo5w9tGaxCGw==
X-Received: by 2002:a65:6817:: with SMTP id l23mr45626205pgt.46.1564061157964; 
 Thu, 25 Jul 2019 06:25:57 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id p65sm49291391pfp.58.2019.07.25.06.25.56
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 25 Jul 2019 06:25:57 -0700 (PDT)
Date: Thu, 25 Jul 2019 22:25:54 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCH] nvme-cli: update command message for "help"
Message-ID: <20190725132554.GA3018@minwoo-desktop>
References: <20190601055428.17906-1-minwoo.im.dev@gmail.com>
 <20190724171744.GA5568@localhost.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190724171744.GA5568@localhost.localdomain>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_062558_606071_6838C8AF 
X-CRM114-Status: GOOD (  11.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Minwoo Im <minwoo.im.dev@gmail.com>, linux-nvme@lists.infradead.org,
 Minwoo Im <minwoo.im@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 19-07-24 11:17:45, Keith Busch wrote:
> On Sat, Jun 01, 2019 at 02:54:28PM +0900, Minwoo Im wrote:
> > The "help" subcommand will show the man page, not the help message which
> > is printed out to stdout by --help option.  The previous message might
> > make confusions between man page and --help options so that it needs to
> > be updated.
> 
> If you just type "nvme help", you get that help message. If you type
> "nvme help <command>", then you get that command's manpage. This
> behavior was copied from 'git'.

Hi Keith,

Yes, That's what I meant in this patch, but it does not look like cover
"nvme help" command itself.

Let's keep it that way, then.

Thanks!

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
