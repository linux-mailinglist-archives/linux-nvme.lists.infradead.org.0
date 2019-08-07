Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC6A48553E
	for <lists+linux-nvme@lfdr.de>; Wed,  7 Aug 2019 23:37:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ltrHdNcqLjmdRWwuGARTxQnKhHk3Dg3A/xeSlQHm8iw=; b=Bl01JzhZQ8uKom
	hoRF4sI1fgwuGj4TkiFwLx0q39gVyEWceKO3uRc1uegrTbSBt0XtFs78sB3+Kmow0HDGyWyBwo0Nc
	BUeXjMfwkCKC5OMgDe1xcyXFhuaqUzXA2jS8GQVtx8alesWjmDX37/9MZ4tZvlv9gCgLiIdExxn4E
	vqFPhTNaQgcCAcPBcaVKkDqeBojnCD1my13wUUIM3dHMs78XGPzk0TXcUxICYn+l1ar9KSY6+6zbz
	lZOfyESCFNLvgaYyj9kytzINxfsJlFVraQWloZ11A7n/CeFOnZEfNBZTjRkL9s8kA40bbc6gSbT4U
	meQozpdQh1LFImHZ813g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvTcK-0006Oi-6a; Wed, 07 Aug 2019 21:37:08 +0000
Received: from mail-ot1-x331.google.com ([2607:f8b0:4864:20::331])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvTcB-0006OR-On
 for linux-nvme@lists.infradead.org; Wed, 07 Aug 2019 21:37:00 +0000
Received: by mail-ot1-x331.google.com with SMTP id j11so9868130otp.10
 for <linux-nvme@lists.infradead.org>; Wed, 07 Aug 2019 14:36:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aeoncomputing-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jN3Wd6HfWoYkousvRhDZk0zgcG8FVl77WwR2FkTnBy4=;
 b=Uj0As/IOjSkF89HBbArBKl7BTwBYOq03yAl4RfB8LwAC6OBjj3/U0GBJiOfvkt+LwC
 YR0DEAvHk+N7B4PhRJYwlt97LIHOFqzfpimxNRDcGpwD6n+3LD4yh8tfflU56LYkViXv
 KRGnu/e8q8rhLSkR3cunZQalsVNeHliEwkTWOCESTzz0W8Nnv8bk+R0xSsTlRy8Fdc4s
 vWMcL2WUeP76FOUDA2VgCUPPzB5QgnKE8nHQ95KtkRUTAVfFtv0Mc8vqUDHjMNO/OIav
 X/j4yWrkYikTUpsoKkeEMKSGK+JPXKscmzPjI37y3lFJC51BxmEwR3VqO4A0TtqoHIqq
 zweA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jN3Wd6HfWoYkousvRhDZk0zgcG8FVl77WwR2FkTnBy4=;
 b=OHFFTNHa5lSw+GCq/d6dGrj/xTX53lzXSmbdeyM+Q9C7ch8FaLFy9q1C5zMNe9zIvA
 /JC/Zyg/zwA6aThMesd2gPsnL8ybLLGlfZMq5HgySw6bc+/s2I4Po8nBOs81UhtGyvmZ
 KLFcxYVXCoG7qDj1XTIHiX1sNKy8eD9R9dGJ3/j4KZEQZm9W3YPDg8Nfw0b7K60mCm/l
 RInwaKqw9AaeCgztT4RbLkCBYupljH7gKX+h8SbVqV8Blu1/g1pLJES6LQjokw2uutMD
 m532NGLKtuRNttzdYUhf3DK3WjTZinr0ynPjlc7CLA3N9LTeblC3V68exg2aWNk9CYsZ
 LNyA==
X-Gm-Message-State: APjAAAVGibJspt1cdhrbyU2SFuDe4SnDSKAL90OoDR+3Vj6tgh3eMENF
 WhRpZ+sOqqaymG9qDDAKV44xoyrhccY5/YbafK7eKSibHo0=
X-Google-Smtp-Source: APXvYqzuBDNjXrX+Huil/OTsr4J8fFj9l/Y6x7WsytUZ91yqe6swFrpyMCmRHbHEqdks5y2H6ItZmhmGYxLtZs+ZIMM=
X-Received: by 2002:a9d:590d:: with SMTP id t13mr10408684oth.281.1565213818818; 
 Wed, 07 Aug 2019 14:36:58 -0700 (PDT)
MIME-Version: 1.0
References: <CAFCYAsfsCH+swCmpubto9od6dmJFsw0i+VDri9U+GVyZkOqcWg@mail.gmail.com>
 <20190807213039.GA26026@localhost.localdomain>
In-Reply-To: <20190807213039.GA26026@localhost.localdomain>
From: Jeff Johnson <jeff.johnson@aeoncomputing.com>
Date: Wed, 7 Aug 2019 14:36:48 -0700
Message-ID: <CAFCYAsd6ra346vBuNfd8fGcL_5ntRTNneXa3_TTk_YoAUy0ZFw@mail.gmail.com>
Subject: Re: inverting order of NVMe pci enable/disable device during
 boot/shutdown? Failing release.
To: Keith Busch <kbusch@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_143659_808077_4F6694D7 
X-CRM114-Status: UNSURE (   8.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:331 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Aug 7, 2019 at 2:33 PM Keith Busch <kbusch@kernel.org> wrote:
> Do you require all 24 slots be populated to observe the failure, or can
> you repro with fewer?

I have not tried with partially depopulating the JBOD but I'll attempt
it now and report back. It always occurs on the final one or two
endpoint devices (SSDs) to disable/release during the shutdown
process.

--Jeff

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
