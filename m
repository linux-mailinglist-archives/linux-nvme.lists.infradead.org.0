Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC8FA809E9
	for <lists+linux-nvme@lfdr.de>; Sun,  4 Aug 2019 10:07:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zInw1TKoSyZ5s97zElRoo42MfYGqJRuTt6Gg/XhDPSo=; b=s7qw80hlb5PyQl
	OwJhMr+xLtB1pWJ0F6BRWuWCG92+lAoxa0pzuloYRtHNFWHIJN8yQcFYJsloTEtYnIBCzh0fdO6TY
	ecqPuUzeS/ulkHywN2HPhZhVQ34jULdphitNIBU/WRDvlQzd6SIjLyF3WGKqVFRKWJY9Ej77bSuR2
	toG3Lxy9d/SvLvnClL5t/v+wxIUrzRtTO5GV5gxcswwUNDrJwD5CPlGDIIecQi06fbAee8ZIFOWst
	nsTepE1yeZikhT+V0EaLiWn4AIKh8lcBSYjdskun5QB3T/t63FoYFFeLPQK61x3e0IcdmBnHkzhpd
	0Sl8FraI4KyUguYYgTyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huBXl-0008Qr-Se; Sun, 04 Aug 2019 08:07:06 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huBXd-0008QY-6v
 for linux-nvme@lists.infradead.org; Sun, 04 Aug 2019 08:06:58 +0000
Received: by mail-pg1-x541.google.com with SMTP id x15so27786633pgg.8
 for <linux-nvme@lists.infradead.org>; Sun, 04 Aug 2019 01:06:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=s5Ztwvsq30L5mlryY2m1yn4U1oLoTPwA7Uh6tAZ1CpM=;
 b=I4I83NHgn7zpW1nAppcY9gxp9llaSYfkycuq2Ov5VDzWC7pIysOai9WNSllP3mP+vD
 u4fETSLgqSaoFMPgVm7en+Ah6DmamcRGxwT9cjzDPduvJRrWkTaz+XEpxF3jymLF86PY
 Cc+lZDXCMUfmplKKo7sEEamRTOF+an0PTsKhzuV58gzjMhVjSt6X7NtC6ZyeFIvn+yGz
 2Pdl6/9U9vJQBzCbYOywme3W5niSE1TocA8Z8SAp1o5AXf+KvST7WWmIF0y2oRIPWlAv
 FYz/iCUF3AzNMinxIUHYlprwZsrtfzN7mVTOOfJJ/a9vGiBlytoUzDuatItqzUIVO7xf
 HWxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=s5Ztwvsq30L5mlryY2m1yn4U1oLoTPwA7Uh6tAZ1CpM=;
 b=MkxivQ9KiUNKtl0LkEQvCv6vm+gO5qxl+S9PrdxegNJcQ2HenZGU8EuhfnuGyie/7G
 zRhjl+j1+xDVb1qNZ/eqkP8piWzPTIwVtslT1l00XxFmSrifYQJ6oxpgu7wP3nQlwpj4
 DUsEfSR2fU6dZyUosi4FwwSYIVaIszz9sbxT3UHww2kMI7FW2uPS81PbyCWAClj7Z95Y
 tKfMgznEpVnAenUMvbNbDq39/WRwoNRTU7c+qAPd+mwY9OR98wIc9JMZ3LblhjSPLR3I
 uhbecrmhpZylns5KTnZFDg/7/Fv0c110EAEJP3IcOUFktPQbqeH2u5y/Ii5DHXh4U4X5
 xBhw==
X-Gm-Message-State: APjAAAUCARJ1qX9Bv/WTBS7Y8yol+UycmdBeSsqFxDOirXSJJ0bBrVaq
 58rDewwQm/FmlAUonjVnB5g=
X-Google-Smtp-Source: APXvYqwOepr8bMgw2ZrJ5zVbpmr7VlDaDS60fJOEhTVp730gcDl0my3bUtQXXwVUZ0yTZwvXV3uW9g==
X-Received: by 2002:aa7:914e:: with SMTP id 14mr67505547pfi.136.1564906016619; 
 Sun, 04 Aug 2019 01:06:56 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id o13sm15533505pje.28.2019.08.04.01.06.54
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 04 Aug 2019 01:06:55 -0700 (PDT)
Date: Sun, 4 Aug 2019 17:06:53 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH rfc v2 3/6] nvme: make nvme_identify_ns propagate errors
 back
Message-ID: <20190804080653.GC14486@minwoo-desktop>
References: <20190803024955.29508-1-sagi@grimberg.me>
 <20190803024955.29508-4-sagi@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190803024955.29508-4-sagi@grimberg.me>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_010657_279320_B20DD35E 
X-CRM114-Status: UNSURE (   8.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Keith Busch <keith.busch@intel.com>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Hannes Reinecke <hare@suse.de>, linux-nvme@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 19-08-02 19:49:52, Sagi Grimberg wrote:
> right now callers of nvme_identify_ns only know that
> it failed, but don't know why. Make nvme_identify_ns propagate
> the error back (like nvme_identify_ctrl).
> 
> Signed-off-by: Sagi Grimberg <sagi@grimberg.me>

Reviewd-by: Minwoo Im <minwoo.im.dev@gmail.com>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
