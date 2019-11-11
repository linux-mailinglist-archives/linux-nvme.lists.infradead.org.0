Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47833F81E4
	for <lists+linux-nvme@lfdr.de>; Mon, 11 Nov 2019 22:09:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DUMK3b8MQAo4cxeGYCdUnlyjHKRBK/y9TdqsHZCp+k0=; b=h5+cBTJDdgiUkH
	rD7bmBCZvCE/TvW8+a1mJy+4kjAGwMjRk2k550CdV2K4t8bJUAXSFMY35tUqpwAXGsSsgs6ZKHp/Z
	LyLJ9xlfrjxtD1JoRdfqKk/iJgZvDGErT3YitZ5R4KgS+LCmetTcKof8tLPj+enPMveeUXKDczgHk
	1goNVAbRBjQnI0aPye4VfypQVJGLT42jxceSGEHTBhVAkAYnuP193XCEqK+xSXrP/277geLEHGtEV
	kBxLRrhXriDkmn6edv0Xy+Gh2SAyoFUO7klMgEL7kpHEzQOVxt5KgeuFH2X1/5IVcqChNKJ0HYDQp
	1eZGVjf5FWCcwsBA1tfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUGwJ-0008Pj-He; Mon, 11 Nov 2019 21:09:35 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUGwE-0008EK-Rz
 for linux-nvme@lists.infradead.org; Mon, 11 Nov 2019 21:09:32 +0000
Received: by mail-lf1-x141.google.com with SMTP id j14so10975724lfb.8
 for <linux-nvme@lists.infradead.org>; Mon, 11 Nov 2019 13:09:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iHSEG4DClXubyHOt3t2tdpDOQlrHJ64gHfdeM+gLICY=;
 b=C0byJPAHyBGELNR8VxwingUMAz9SgITb+A9AjnUdlNbZN9If1XFd42A9WqMnybvxSh
 0xLiQLCshpJ61VXki7XNugUcsdTCSnlP9Uq5ZvPtpwpXSh0oF/NEQUSxl30OzkfQZhqn
 1rf/q3MlN+w9M3x5JJsgY/AKPYTzGwbGoib87YokicnBfZgpLs1wXPr9Y9SpAD004Vpc
 6eDlSOScgt1RgLLp75LmDJ1HFnQwHPq2IYG+5NGSbdCgOJG4spodRKfaDMd6ziILXev2
 RIhm/RbObZ1Dj6FfGK7ro1/9OeFAFam69eF05Ix8bUzPjkHTLXqiKHkU0rFiMpVWLzrf
 Y+uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iHSEG4DClXubyHOt3t2tdpDOQlrHJ64gHfdeM+gLICY=;
 b=YOTW4UVCoH/d4faQSBiLcHOBut9NrD5UXB2V0mZoU+jyqe21YnIDtqgy8dwJycLuQU
 cA5sHxbq9K+GSP2eYMBbV7pG47g21iTJioE+pQDwoN9sSIDQhskkAMk008r+mzA0N828
 EYKDCyc1qAmgGVVNrUfAQ6nyR1xWU4JeK8mMX3Sjk5Punp+jiRXtJKxqJC1bVjquHJUH
 i/6fjs6cNux/miUHB6zoctr+gy83hFUbQ3EleJK0HtSiKDuV6Ij4y0Nra714EdYQJ8Lt
 k4lfipdTCo9hR8/Ks10xBMMzrw0seNSj5C/TIoVloVSrPd4AfCs0cdgk73oz5T9Ht+ps
 L3SQ==
X-Gm-Message-State: APjAAAUFlAH4PwVdqSJ1tn1ON4yGauDkZ/eDO3Zj4VBh2DlMYv4zfa+6
 Z8t1gy7fOMRkzwsPoQmJi3sqB6jBuoOPD83gdO7Pnw==
X-Google-Smtp-Source: APXvYqyOV+qMajgujL1ZnUhT/5i+HYiizrcV+RZBGO/EpSCa9X8F8143Pct1qwA+SxxRp1H6OvOStCg/EzXoXYMk7qs=
X-Received: by 2002:ac2:5305:: with SMTP id c5mr9157574lfh.55.1573506568166;
 Mon, 11 Nov 2019 13:09:28 -0800 (PST)
MIME-Version: 1.0
References: <1573493889-22336-1-git-send-email-alan.mikhak@sifive.com>
 <20191111203743.GA25876@lst.de>
In-Reply-To: <20191111203743.GA25876@lst.de>
From: Alan Mikhak <alan.mikhak@sifive.com>
Date: Mon, 11 Nov 2019 13:09:17 -0800
Message-ID: <CABEDWGyMrDnuR+AzazHqpiHC9NrHFoVcW5iFREOey04Hv7xLqw@mail.gmail.com>
Subject: Re: [PATCH RFC] PCI: endpoint: Add NVMe endpoint function driver
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_130930_936227_A18CC643 
X-CRM114-Status: GOOD (  10.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: lorenzo.pieralisi@arm.com, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Bjorn Helgaas <bhelgaas@google.com>, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Nov 11, 2019 at 12:37 PM Christoph Hellwig <hch@lst.de> wrote:
>
> On Mon, Nov 11, 2019 at 09:38:09AM -0800, Alan Mikhak wrote:
> > A design goal is to not modify the Linux NVMe target driver
> > at all.
>
> As I told you before that is not a "goal" but a fundamental mistake and
> against the design philosophy of all major Linux subsystems.  Please fix
> your series to move all command parsing to the code based on flags for
> fabrics vs PCIe in the few places where they significantly differ.

Thanks Christoph. Let me repeat what I think your comment is saying to me.
You prefer all parsing for nvme command received from host over PCIe
to be removed from nvme function driver and added to existing fabrics
command parsing in nvme target code with new flags introduced to
indicate fabrics vs. PCIe.

Any more thoughts?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
