Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00DFB274D9
	for <lists+linux-nvme@lfdr.de>; Thu, 23 May 2019 05:48:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fwgv0HAHrpUKjJi7c8uP+ZDaR0EvdMtdlYzApbJ/DUQ=; b=OKReidaDg99aFI
	bQNCm6wkgIJlM39GozhWG0ZaCRs8opVBfMHYhan7vf7UJtGNurtXv013QBb/z1MbrKhBsVnTVMp2E
	YXjaDfklh19HCzrxDEBTL8Jwvug3Gb3ef6Z4Nrlgvufp4NBaMuVolOsIHI++YNZb+s23URBF388vP
	F/5Umk5mXDig3iXPNCvFdjh7EL05Op8nNWk25CiL0kFa4eNClCkEyvR1D+OAN2QlZ+nsoS8W8NIEx
	H2JZLrpCt3aw25jlhlZIt0t1V5rK1AftxJZggXoLTHKSaXMzDoLnPhxHc65iTLTDlYJW3BTIU/Tpx
	osqQ+NfGm95CZbv+sVew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTeiP-0002BJ-DE; Thu, 23 May 2019 03:48:25 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTeiK-0002Ag-Hl
 for linux-nvme@lists.infradead.org; Thu, 23 May 2019 03:48:21 +0000
Received: by mail-wr1-x441.google.com with SMTP id u16so641677wrn.8
 for <linux-nvme@lists.infradead.org>; Wed, 22 May 2019 20:48:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9qtPMnAUUVQgci1L2Z8R7wqj8qtMP67aZO3w68PXuYY=;
 b=UsZCituCCHizoLhMBuwTw58FdovqthjyHeFfbnaIAEHePM4xiV8iXQNxUZtDW36tkv
 xt931Fl1AVRkShYYVP2qa7mkfUW9jrDALhABWXc8ECk1ql6cBmn4FdsL4LGSo6Q078T7
 2o3/Y8QCO2nUUZZiL7oyasPxE5pN3zzXTTGScIUCXVYQlEdZWKXBqKe+5t3ZpJsRtzQQ
 SfnnklJ9btAMgwEjKK9zqJOfk2pVtEmKjfdpxofwcX/X3VC6BsMYhDQIvLlLh72Gbcj1
 fWhUgH0zQ52p0erv2AJTWrRuBpXP9Isz+b+bCHrh83vszdxPdFAl0js0XfZpDnD9sMMx
 gszw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9qtPMnAUUVQgci1L2Z8R7wqj8qtMP67aZO3w68PXuYY=;
 b=tvM8nLZh6/PVawh9TO8LBKdi3Go2ZjS5lE+hKzk117Y5dPNcpne1rs/P6UnCUAE+Ms
 bvr74uBMjcP5SwINEV+5EhOdFZfGJZOePXQ43WZ/VVbBv2xoJQTJTs8UPgKmJ1/l72ug
 LzYgN5HtlIHCBRoA2Ht3QEq6EoovEmdjV77MkJia7+EvihggqQeDte7FUxpdVD5/ankB
 1Vjdu7d+mLeL/87TIB1mOGkIkhDS97zZZLzZUCSrcK7rBDOmFt4PB5xbakjNVKdJD80d
 /96SZuzFFM2DRdLBzZrnErpaBBkJXn8JMSWmlMAHYHr05llvG5ON5eyw/zOG5FxRGB1k
 4HFg==
X-Gm-Message-State: APjAAAWT4CGeUmwc/O6ZsTMfJ490rvy3aBrX/Qr2vvYJfTK555HFOcfC
 8qNSBM0U0hD34QHsg+1fUCbCVP4U/Z92ImertRHrQg==
X-Google-Smtp-Source: APXvYqxAZkETQPBeg5GixiQ49yu9hFZ7S87hWBAUJuAEc7NyD6irLPboiv//euadZDuGYTlhkwKP+LNiYfkH2qiwN3g=
X-Received: by 2002:adf:d4ca:: with SMTP id w10mr57456214wrk.293.1558583297037; 
 Wed, 22 May 2019 20:48:17 -0700 (PDT)
MIME-Version: 1.0
References: <20190522174812.5597-1-keith.busch@intel.com>
 <20190523032925.GA10601@ming.t460p>
In-Reply-To: <20190523032925.GA10601@ming.t460p>
From: Keith Busch <keith.busch@gmail.com>
Date: Wed, 22 May 2019 21:48:10 -0600
Message-ID: <CAOSXXT45jyLrKZ56QOPGWFyajtSvgPQcT+f2nj95n9Eowb44FA@mail.gmail.com>
Subject: Re: [PATCH 0/2] Reset timeout for paused hardware
To: Ming Lei <ming.lei@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_204820_615686_CA58858E 
X-CRM114-Status: GOOD (  12.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (keith.busch[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Keith Busch <keith.busch@intel.com>, Jens Axboe <axboe@kernel.dk>,
 linux-block@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 linux-nvme <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, May 22, 2019, 9:29 PM Ming Lei <ming.lei@redhat.com> wrote:
>
> On Wed, May 22, 2019 at 11:48:10AM -0600, Keith Busch wrote:
> > Hardware may temporarily stop processing commands that have
> > been dispatched to it while activating new firmware. Some target
> > implementation's paused state time exceeds the default request expiry,
> > so any request dispatched before the driver could quiesce for the
> > hardware's paused state will time out, and handling this may interrupt
> > the firmware activation.
> >
> > This two-part series provides a way for drivers to reset dispatched
> > requests' timeout deadline, then uses this new mechanism from the nvme
> > driver's fw activation work.
>
> Just wondering why not freeze IO queues before updating FW?


Yeah, that's a good question. A FW update may have been initiated out
of band or from another host entirely. The driver can't count on
preparing for hardware pausing command processing before it's
happened, but we'll always find out asynchronously after it's too late
to freeze.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
