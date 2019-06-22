Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 623864F2D1
	for <lists+linux-nvme@lfdr.de>; Sat, 22 Jun 2019 02:40:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pjn99OTLAoOuEtxjYaWVm88dTmPpk5zkYl7NcztmBBE=; b=cOItA2lMJAkgFz
	SOF4UzXygbD/Uln0MTDzCDxlLhTTFmk7nfj2usaqvpGqOPLhQ2256HyenpXiNzAlytTuSdvgekKla
	/+SHIOqteTXme0FUkNWWjdVSnm0h/nUC2e5p0zAtUjZOp4w2QNSommfkSxt9eCjT+IkUoWfUQbjId
	hLi4IZRM0s463nf3jmz4RYrG2FvbuMY6NSC9UZ5hhRetnz9r1ZgYjXcA+Cs40YayQETX8GGY7DwDH
	0otoEPZnp9pCsKzynaZp6Stoh+OQidxSRa8suwAefuUXjHoZ1MJVhSxngkUJocNaxAo6e8WDPAg+A
	Tkjol4510ai0kkA0FNFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heU4q-0007Y3-BF; Sat, 22 Jun 2019 00:40:20 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heU4l-0007XY-3y
 for linux-nvme@lists.infradead.org; Sat, 22 Jun 2019 00:40:16 +0000
Received: by mail-pl1-x641.google.com with SMTP id a93so3769451pla.7
 for <linux-nvme@lists.infradead.org>; Fri, 21 Jun 2019 17:40:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=lWt4BlgxflhbFvnIKSsObGWARXivSmPrwFtLuD5g60Y=;
 b=tCpNxe3wnfngq9f5mJWhM7rEZUPYw45LfH8k+5veKVbwjuuCX+B5Tt+KXrglhV2KWe
 IgvlsKP7oFO9tLIiii/SOBpRoTk8WJAzX/Z83pfgVeELfUtgPAvVfOPhYN6E8Fh1tsp3
 29nTNx0XzEHe/qgMd7/uWnOVabv3QOABXcIXRdUYs6oOVMv8khokWzW/WuVKfDroVFov
 vtiNKknrxhGQaHOS2ozhREJDEMi6fMsz6Ja+CVW72/kFKgu7nROpEseOKOPr9pgJXJ0Y
 THVVKsC+/5hf87PizB1sWxxWFKRHm5xrjHzf1vkCRV1E3nReeSkrD15gk+BQycQrK8dF
 cI2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=lWt4BlgxflhbFvnIKSsObGWARXivSmPrwFtLuD5g60Y=;
 b=hAC8cTGOlpt1P3IGWH86LRnpHYLLc6oQLQHC6xT9+78fCXAoHQOg8WBEbe+GPWAHIG
 nBT8y+xwb0m0uZdJgMNImWrg2XoWGOrCVANSJhdchgWNL1Ag8Xi0KFKtsy0BqFUS6hdv
 JzIFSHNieacr7xQh5ACe9eq6+s/ClxmsqVRb13kkF7mA7Wla+xhMCuMtdOeTUJG8M/5H
 gNn/YWT+proWI3ngYihbtdSxGxiUZsGY2jU4SBbRgOO159KwsDIUAnJbpCzYnjLctObq
 SRkOXP6BDVuO1j0cxDeNCtlYUtMlX7PSpx++ah/BYnipS2ClHW4JGuExf5oIa7+Iih2a
 W/1Q==
X-Gm-Message-State: APjAAAVadtMFgTL97SjLfvQ1erXt0+K5y/TkkARgR8nvy/l9RJ/RZVPs
 mpeH8jc53Kpsp2ZgT4o+7VU=
X-Google-Smtp-Source: APXvYqwzuBdB6lbuTRvYp83+W5t7WEQvvYqdtrTYb7a/tjVH2WpiyfXHSv+zxebPZ4mdfiGO8F3TSQ==
X-Received: by 2002:a17:902:1003:: with SMTP id
 b3mr136255201pla.172.1561164013099; 
 Fri, 21 Jun 2019 17:40:13 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id f7sm3865897pfd.43.2019.06.21.17.40.11
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 21 Jun 2019 17:40:12 -0700 (PDT)
Date: Sat, 22 Jun 2019 09:40:10 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: James Smart <jsmart2021@gmail.com>
Subject: Re: [PATCH] nvme-fcloop: Fix inconsistent lock state warnings
Message-ID: <20190622004010.GD3139@minwooim-desktop>
References: <20190620200700.15659-1-jsmart2021@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190620200700.15659-1-jsmart2021@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_174015_161927_4F9FC285 
X-CRM114-Status: UNSURE (   8.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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
Cc: linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 19-06-20 13:07:00, James Smart wrote:
> With extra debug on, inconsistent lock state warnings are being
> called out as the tfcp_req->reqlock is being taken out without
> irq, while some calling sequences have the sequence in a softirq
> state.
> 
> Change the lock taking/release to raise/drop irq.
> 
> Signed-off-by: James Smart <jsmart2021@gmail.com>

It looks good to me:

Reviewed-by: Minwoo Im <minwoo.im.dev@gmail.com>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
