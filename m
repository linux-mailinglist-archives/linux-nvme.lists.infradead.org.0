Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88E0E4D043
	for <lists+linux-nvme@lfdr.de>; Thu, 20 Jun 2019 16:22:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jZwn7KimFnrvxdAB4ltB+IV5eqKP2Rd9Y7ciUNCyvt8=; b=TrkEZ3JXhoioDm
	S9vfY5cKv+nGgrPPsVApJzRhTHxq7/9xgqSANytqGV6DPu+0sBxVj+gROjzRb9Km8wNQaKoGrekgQ
	Lbg39/V2f83b9Y7pYHqrDkqCX7EYudzZpt/L6UBAQLZpg3br1DMTMJTi4ANS0ssojmlMYD9HT/wEl
	dUo+vXsK4hyp1gMCTdFwcddHCnQzTJqoUotZywUWaDHNfjRhvNNKsjG8eY3JAD1jA8E8KiQ6GFN5J
	ZdPhhRcNbGV7JADwEc/dJV2AJuS0nnHn1tyVVwrCRESM0TrvS/doX6h0BdRiIzN2rSwKDullUhgRK
	cEdEmrKHl4ASfKyQ/ibQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdxxO-00037i-Qo; Thu, 20 Jun 2019 14:22:30 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdxxG-00037K-Gx
 for linux-nvme@lists.infradead.org; Thu, 20 Jun 2019 14:22:23 +0000
Received: by mail-pf1-x444.google.com with SMTP id i189so1755697pfg.10
 for <linux-nvme@lists.infradead.org>; Thu, 20 Jun 2019 07:22:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=amxPuZMWruZ6Qf/i35F6KQ81Xa6p/bISSXncr5kgf8s=;
 b=o4hkvi1pJ4oP8MPM9+VJM3zWUITha3GfNpFKLMbf3raX6x9HzyHcju1WxJBwfoufdp
 Zch3WWhl08dcfA7Tc+aMtgKj8NLQaPvpe9IB695Wc460+VxGHskwLlxmCbGH7BnIGm/k
 fYgPyew7+iQu5nM8vuVUhyT2QVZG5NXyR0VpF+3yDmdOIkw0JkLAwIq4NMEfOnoARJFe
 h/6Z2qkcS2MMS0AeGQ8ASFHcaZ7RdEhjONVmFx2f4TXDtc7f7CL/4B6YqOkrZaR+uP10
 p2R/mT59++JpYV10y6zQlgESSuasnbec97qtrFaaj4dHktv2ULAxjyB287oNi02RJrpv
 wKZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=amxPuZMWruZ6Qf/i35F6KQ81Xa6p/bISSXncr5kgf8s=;
 b=lYM7KgfEXI4+rXwtheJ9VuSYtyuZKYOu1bYWnMCzEUdNH/ue/Iv+3jvT1vzaYX12H9
 JSVOeVMiR5USBcjs9JyiKiOHH17vQuuudGWPkiCf3siprS7IHZqOJM+dH1muN39sMrpi
 OyTFuyIOJ2APDEEyn49Q8xGSSo5gTyx790XDWRaomUUEga1xfb8yu6Iqr0H3UmEV7TNj
 hTeIkG0Tq1g60SGO3sirqI7mLFtJ2vBBXsxRepBhxfd/PJmCR/A7wVRp8xLg47K2d1Bd
 bACfaXhaLGBT+SjkI5pGvwwV5V1dXhbcuCcRN7Nc9CQBzBSjcShzPc8E76mFTCSuQF4/
 bO8g==
X-Gm-Message-State: APjAAAWsLLZ6BoX2Ndqwiu49b1ubFk88gom9hVkyuTLIEfTAN2t7romO
 +CuC/sbkOgCx4ZSjP9g9Js4=
X-Google-Smtp-Source: APXvYqyFjAs00NRvq9p8nRGctc19x4x4ICbJnQPJbImF5tQBWyCn2h/oEv8m2lbhabuH+fAB2jz8XQ==
X-Received: by 2002:a17:90a:d3d7:: with SMTP id
 d23mr3215789pjw.26.1561040541459; 
 Thu, 20 Jun 2019 07:22:21 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id 3sm22313138pfp.114.2019.06.20.07.22.20
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 20 Jun 2019 07:22:20 -0700 (PDT)
Date: Thu, 20 Jun 2019 23:22:18 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCH V7 0/7] nvme-cli: Introduce nvme-status mapping with errno
Message-ID: <20190620142218.GC12032@minwooim-desktop>
References: <20190618131216.3661-1-minwoo.im.dev@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190618131216.3661-1-minwoo.im.dev@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_072222_590539_BABA35AF 
X-CRM114-Status: UNSURE (   9.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 19-06-18 22:12:09, Minwoo Im wrote:
> Hi Keith,
> 
> Now it's v7 patchset for the nvme-status mapping with errno.  Chaitanya
> has reviewed for the first five patches, and Sagi has suggested to
> return an error for a case that numrec is different.  The 6th and 7th
> patch will make what Sagi's said.

Hi Keith,

I will put this series to the Github PR for your convenience.

Thanks in advance,
(Also thanks to Sagi and Chaitanya for the reviews :))

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
