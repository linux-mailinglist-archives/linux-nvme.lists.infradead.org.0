Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF39198915
	for <lists+linux-nvme@lfdr.de>; Thu, 22 Aug 2019 03:48:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MWp0LGPQHKRW0NzIdTj7UDAmsQZzxkAChzvFW36oe7Y=; b=d93e0fOrfdXgdz
	+TS48+lzk8DP1ncnqEer0YmGClerfjhY9oeR04EEbr15G2Gqao5H5Z4VHC2bI8fKMwPNsrAXwt4cl
	nOi6P6Yy8s7FjaCRy/zc+lT3sw+o7/vYuzf1OvLYfXfCCurG9kzx1JX+p+x3OIBeoK/oKByx8O81H
	zQTaXf03VCoGkebY/Jt675ZHBSinPnfpMFyUlWTnvdhESEZg7pFPYNqstb7T4SbVAzavGHjUkBD4t
	5OXfDo97wUCOPzy1lSB+dEze+bLkK1mX2luEmEaY7am8FxP4g+Q9mblmO/DQZmX449CoEeCDwlHhq
	avnvLIoHaAow6fwbGJXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0cCj-0001DA-Qf; Thu, 22 Aug 2019 01:47:57 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0cCe-0001CZ-NJ
 for linux-nvme@lists.infradead.org; Thu, 22 Aug 2019 01:47:54 +0000
Received: by mail-wm1-x341.google.com with SMTP id l2so4049949wmg.0
 for <linux-nvme@lists.infradead.org>; Wed, 21 Aug 2019 18:47:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wZR07vIJcqqUamUo3sSEdov9SZWkTm3dahX/DPdg1bo=;
 b=SRGC9eR/AmbXCE7qAQ4KWNeTWl9IXUmoaMvmAEzucRQqNdEGQGi39ZT7+G3VfTDHjP
 1OFKIjSHoKEGj+Cke0VIjJct9K0/7kHMv/+WHSC5s87lArvfkIokc8JavNFfEvNZ9sdp
 8XVa0QoRPYQF3PxVUPwHKLGo5n9sl2aBJhyEEiVTckt3W/v+EN4+D1bd/yfEPdTZyVyD
 ILhqrI3qcnav7gqpFm2Q3bcg2Z8PgyYMkPCbCTkllUG7fMV0WwreHUIuaYTLZ32Pqsga
 SnScZF92PEqvfZ499rTVWxM4KYl4VZJViIYGwpY1ko6GXQsVbwMe2YN3jwt2s+ZcwIo8
 Y+WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wZR07vIJcqqUamUo3sSEdov9SZWkTm3dahX/DPdg1bo=;
 b=gHG32PZ/hwC5mFcZrLbu9GckhzQHLZTWTWqrSgViGkJJAJnft7qTYWY+AdqiRs+poG
 wKqFzJLB4U236c68SMyPMycW3xev1UOh4qPEhS34EOCyZbUppLvNvMK8iepnT02yE/10
 qDZPfTGde71Ii6AshVJsL5DqBIJJFXIi92FHUkQWbrLtx1jBA0Picjvv/GYHapFbRwyC
 c7UxRZKeX/azFPmXBVCtaYxkr2QydTFiQQLQ9ZWoG5viVrYZKhsFUi2kgj1T6CIcwfc9
 S8vLP/PcQTcbiXsqzB6YHx+R+PL++lsBBdoiUMv1xBGVGngIuJAmmCk2m2yaaMx9wSeR
 16zQ==
X-Gm-Message-State: APjAAAUUqTaOMVfVFMBJLqqTQXJYZoppw8iCDYwOZmM6WjiZo2YX4S2b
 vSls13QJfUeDpWr/U1209/WrZmlpCGSWnrAPH9M=
X-Google-Smtp-Source: APXvYqx8InRXIY5r1I/EaBkotgrryOLxGBhmjhwQJNTEqY7WdTxnUPltpLqrPRFWiRygzhTa2S0PSOAsgvCc/6lW6xQ=
X-Received: by 2002:a7b:c758:: with SMTP id w24mr3027140wmk.143.1566438469044; 
 Wed, 21 Aug 2019 18:47:49 -0700 (PDT)
MIME-Version: 1.0
References: <20190821224249.14281-1-keith.busch@intel.com>
 <20190821234233.GA27887@infradead.org>
In-Reply-To: <20190821234233.GA27887@infradead.org>
From: Keith Busch <keith.busch@gmail.com>
Date: Wed, 21 Aug 2019 19:47:37 -0600
Message-ID: <CAOSXXT4LwT8ZeqBZ1J34wfOwGhEJZx8mAzWP9uQcj=E+tqc1LQ@mail.gmail.com>
Subject: Re: [PATCH] nvme-cli: Warn and delay before formatting
To: Christoph Hellwig <hch@infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_184752_818182_AC90A265 
X-CRM114-Status: UNSURE (   9.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (keith.busch[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Keith Busch <keith.busch@intel.com>, Keith Busch <kbusch@kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Aug 21, 2019 at 5:42 PM Christoph Hellwig <hch@infradead.org> wrote:
> I like the idea of format warnings.  But there is one things even worse
> about Format NVM that we need to include here, and that is FNA bit 0.
> If that one is set, even a format of a specific nsid will format the
> whole controller.

Oh, but it gets worse! FNA bit 0 set means formats apply to the whole
subsystem! Namespaces that exist but not attached to the controller
receiving the command get formatted.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
