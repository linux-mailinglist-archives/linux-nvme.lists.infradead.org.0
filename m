Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DFEB159BED
	for <lists+linux-nvme@lfdr.de>; Tue, 11 Feb 2020 23:07:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YNJDFiTlaRylwKRNdJ+XTJgHtm0Xhcpp4nyKH8Db24c=; b=p3xoAIfNkyfIwd
	MySRwvchQr9kMPFScIYIhB0lq7i0JbH9YaOwiyB+LGf++ibb7oPY0BTiG8he9sIC7TLZOOMRFshIQ
	u0potWFureQmp5wNTTh1DHI71QJtyLsGXxPclnFajjnEPkzYCqZrVnavc5WshLo+EjmFd5B6iz+aU
	JyhEuMljHLzAkmkjozO8UxBOrRJTyTx2iGE+3WWqg+b4I/tWB4AjfaYIc08VFMLoR/n2pCxpI24+V
	welQ1Ku+xwgUzbKRY9i9C61gD5THaGNh3lIacKvDFXCBqS8AqxF9WiSBMWtf+on2Cu5mw064V1F7s
	qxYj7MAbYqdvIgHPB3XQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1dgu-0001br-CA; Tue, 11 Feb 2020 22:07:36 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1dgo-0001bA-8M
 for linux-nvme@lists.infradead.org; Tue, 11 Feb 2020 22:07:31 +0000
Received: by mail-pg1-x542.google.com with SMTP id j15so82352pgm.6
 for <linux-nvme@lists.infradead.org>; Tue, 11 Feb 2020 14:07:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=osandov-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=WgVTV7lQE/bIyvaXC07C34YUlrDcd8TvB6ftUOXG7RE=;
 b=WnodGkM11OnywU2OzjV1xqkHM4/hHNpvsrhQIJkenATDhx3P8OWSxO3WSnTw2N7Y1/
 gACqBGW8KQIQjHg1LdckolzuHUwTgaxtwvxkZZo3CRJf5ECYbleKHNir+q7qDdnFO8Ht
 VEU96+vJfj+4+8CnXdcJAl7GTZdP+IMmNx1fKXU0R4o41GF4uBgBoi5064rk9TbfIpuH
 eM+CTToM2as83KSphrWfzLfieEt+eCHz99WS5GVRMYL+AsbIpAGnUGCeeU03cPTXLGSm
 tKm31xgogVl5X5sQNQSi3v4vHIw7dJTfZDrkDKlkJF4K15qdwUiOxy1iTcbFvcizUL6f
 dFDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=WgVTV7lQE/bIyvaXC07C34YUlrDcd8TvB6ftUOXG7RE=;
 b=hnnRZnUekb7jnoC3/joJ1ZZ0H4t1DtqzwXdFZ4SZ9H4Rwv5WcPeFbAVqylcWEaoN84
 2BOJDzLiBYx7P2pdmZA/LNJDNMhiLpv8ZpF1OOxD7oz2XLpweiSTGgxVIDowycty4cnI
 VFNAl9yv2hNGYaTQjdVtBselknpzC/m941Gu36Ji+yUNBOYU5P0oMunjUeAcSqYDkmhh
 GDE9id1msuHQJ2ROUO9iSLzw09zPVChQGAqaSodZZPDBSXw6W/x22jyWVOz+h+Eqt36p
 lxEbgs0XkwN3agwFLRv38KAGS0r5//vtMc+QVzNiWQQpRkV0IjNp+YoJWhTMW2bfWg++
 3slA==
X-Gm-Message-State: APjAAAUfhOd5e655vaKhnkUpX/yyf4M9NwZnZ3JKA1izgcuCGi+skG4V
 OflrTpUYaCu0rE46oZBzly/YNQ==
X-Google-Smtp-Source: APXvYqzC/8Wpkw9hgpOc5mN0QFy0feFu+Zy8uP+RivPzgRjbR7PCRErpak8CPxT/HhYm+2vt3vNcaQ==
X-Received: by 2002:a63:2f46:: with SMTP id v67mr9519142pgv.220.1581458849691; 
 Tue, 11 Feb 2020 14:07:29 -0800 (PST)
Received: from vader ([2620:10d:c090:200::1:80ca])
 by smtp.gmail.com with ESMTPSA id r62sm5619461pfc.89.2020.02.11.14.07.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 Feb 2020 14:07:29 -0800 (PST)
Date: Tue, 11 Feb 2020 14:07:28 -0800
From: Omar Sandoval <osandov@osandov.com>
To: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
Subject: Re: [PATCH 0/5 blktest] nvme: add cntlid and model testcases
Message-ID: <20200211220728.GG100751@vader>
References: <20200129232921.11771-1-chaitanya.kulkarni@wdc.com>
 <BYAPR04MB5749FE36341AB61547C1218A86000@BYAPR04MB5749.namprd04.prod.outlook.com>
 <BYAPR04MB574971DCB7CF63F7A4A269B886180@BYAPR04MB5749.namprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BYAPR04MB574971DCB7CF63F7A4A269B886180@BYAPR04MB5749.namprd04.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_140730_299791_57F9EDE6 
X-CRM114-Status: UNSURE (   5.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 Omar Sandoval <osandov@fb.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Feb 11, 2020 at 04:46:05PM +0000, Chaitanya Kulkarni wrote:
> Ping ?

Whoops sorry, these don't match my email filter that looks for "PATCH
blktests" so I missed them. (You can make git do that for you with git
format-patch --subject-prefix="PATCH blktests", by the way.)

Thanks!

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
