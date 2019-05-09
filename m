Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22B3018787
	for <lists+linux-nvme@lfdr.de>; Thu,  9 May 2019 11:13:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rUPRGev788reTpFf4GlGFuRWFnCulIb5Cu/xQOTiTPs=; b=EmujQCJm4LHqQcwIyhhOSi0Yf
	KP6ZH02fNop7YdxCBJ+415V66GXHju9hcUu9Z1VBjAGfd3gZ6Y2DnRTRZ5ZWul4ibZEtGjNp4BZRX
	ZvSww9VbnrpfzkY+Isk5lyBw+kmKgReiCUj/QPwVY7YYc/m1F5kyxomphM3qGAIMzUMMIwiTfn5q9
	I9Y1K1xptntt2A3nbaRNBhw3VBkJJHs33y8ZPe+vv0f/SehZ8UQzMq8lDS/kz7hArlYSdafgiqhEq
	JkEsaIrXFP/P16tCki6xF+Ih9IVIFT4Umi04jeTh7BeuW+Tfy9J3FBYRL/mzRW4KeRlnbkCbs8JOV
	b8xh3ps1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOf72-0007WU-Cq; Thu, 09 May 2019 09:13:12 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOf6p-0007Vx-L0
 for linux-nvme@lists.infradead.org; Thu, 09 May 2019 09:13:00 +0000
Received: by mail-wm1-x341.google.com with SMTP id 198so2238962wme.3
 for <linux-nvme@lists.infradead.org>; Thu, 09 May 2019 02:12:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=UcO77C1d2oPlXYkp6CkiRlKtVOMkq5wxTIYeAm1syxo=;
 b=CDkwyiO65SSVbxmKPkBw+7CcNdsw7cmG/lXhK57rnCu5hWuqjioqvSYy2l9aUikO5M
 /nW8VgaATNCzJhdIcK9nIZxH0TZfYz86n0vwCqqh1C//E0g2pG660CNOtzmxqm6EqpgK
 ZWIpx5vT9WYGFEmAXUpEgd/buHjfmaAOtX6UH2Bw+XR37DkBzqcVhOmXL2ZHV4oI4jxf
 Q6v6TKLWoy9BL+/a+HF5QnTS14Sj1q9oOGmb1RYruBTgAgXTxEzipUKxBtN49pQAYrNG
 4uZj/gIv9bT4vK48zVMSQsSJ5yDQ1b2WgQORXIz4ZaauynohR8iJft+JXpAWii7StqKO
 1cXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=UcO77C1d2oPlXYkp6CkiRlKtVOMkq5wxTIYeAm1syxo=;
 b=p4PlLIiJvCSWz7YlXBuU9mzkoNJ4xH3B2e3JSyVz6dEt3/QbBYF0ZPU3HvrN8mluzl
 9orJz3H6hqvik9rZcadprXM9qeu4Bh2kjBNu6ORII05c+w21f1ntSjeq5p5cwfyCMpvx
 QVKqjn5ZwEX2gjoEcdqh6BSM/6XUkFJnBkG49YHLcmZamg7jREiYfMwJjNYqquNf7tgk
 3X8KVICsSCzAJzWIRoS9JCKRkPqprGKBTK5/091hnRrB07NgQPUfpobrTQHYm1/j6W11
 5S0826oM9QBQL5tyjXYYW9H/L9DDkVDnFQPagwQw4EsYT0cmNpckw0wjk/g86CuthREj
 sXqg==
X-Gm-Message-State: APjAAAUwNNRj+E9uPW9itvZRhGQTlfO9oSmHaG0Tq5gzeepKTYXGy1wF
 KXcqI601sxiIMgVD3v6d7xA=
X-Google-Smtp-Source: APXvYqw0VKhI0WziMTaFb1wtWXZnzZOn5XxmOI7BEJXN6voxMBVpcjaeQu+MCIZq24v6HE7IT31/cQ==
X-Received: by 2002:a1c:b756:: with SMTP id h83mr1888506wmf.64.1557393177619; 
 Thu, 09 May 2019 02:12:57 -0700 (PDT)
Received: from localhost ([51.15.41.238])
 by smtp.gmail.com with ESMTPSA id e8sm4815404wrc.34.2019.05.09.02.12.56
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 09 May 2019 02:12:56 -0700 (PDT)
Date: Thu, 9 May 2019 10:12:55 +0100
From: Stefan Hajnoczi <stefanha@gmail.com>
To: Maxim Levitsky <mlevitsk@redhat.com>
Subject: Re: [PATCH v2 00/10] RFC: NVME MDEV
Message-ID: <20190509091255.GB15331@stefanha-x1.localdomain>
References: <20190502114801.23116-1-mlevitsk@redhat.com>
 <20190503121838.GA21041@lst.de>
 <e8f6981863bdbba89adcba1c430083e68546ac1a.camel@redhat.com>
MIME-Version: 1.0
In-Reply-To: <e8f6981863bdbba89adcba1c430083e68546ac1a.camel@redhat.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_021259_715328_95271907 
X-CRM114-Status: GOOD (  11.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (stefanha[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Fam Zheng <fam@euphon.net>, Jens Axboe <axboe@fb.com>,
 Sagi Grimberg <sagi@grimberg.me>, kvm@vger.kernel.org,
 Wolfram Sang <wsa@the-dreams.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Liang Cunming <cunming.liang@intel.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>, linux-nvme@lists.infradead.org,
 linux-kernel@vger.kernel.org, Keith Busch <keith.busch@intel.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 "David S . Miller" <davem@davemloft.net>,
 Kirti Wankhede <kwankhede@nvidia.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Paolo Bonzini <pbonzini@redhat.com>, Liu Changpeng <changpeng.liu@intel.com>,
 "Paul E . McKenney" <paulmck@linux.ibm.com>, Amnon Ilan <ailan@redhat.com>,
 Christoph Hellwig <hch@lst.de>, John Ferlan <jferlan@redhat.com>
Content-Type: multipart/mixed; boundary="===============7070628094440887194=="
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


--===============7070628094440887194==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="qlTNgmc+xy1dBmNv"
Content-Disposition: inline


--qlTNgmc+xy1dBmNv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, May 06, 2019 at 12:04:06PM +0300, Maxim Levitsky wrote:
> On top of that, it is expected that newer hardware will support the PASID based
> device subdivision, which will allow us to _directly_ pass through the
> submission queues of the device and _force_ us to use the NVME protocol for the
> frontend.

I don't understand the PASID argument.  The data path will be 100%
passthrough and this driver won't be necessary.

In the meantime there is already SPDK for users who want polling.  This
driver's main feature is that the host can still access the device at
the same time as VMs, but I'm not sure that's useful in
performance-critical use cases and for non-performance use cases this
driver isn't necessary.

Stefan

--qlTNgmc+xy1dBmNv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEhpWov9P5fNqsNXdanKSrs4Grc8gFAlzT7xcACgkQnKSrs4Gr
c8h67Qf/cCzGWh6iM657Q87QZaDIfXuEdFC5VBJt+JUTAJrD1K+vJeppmlITSNe9
7i6nrm+Y7G2icJW5PZmv7Ym7Pl9na4VDNU+G13f/ErGEniwuY8YdvW5VyO7v8Ilo
ShnXoNT6DY0yhSi7TZalmpq/o9GAw/i0A/QEoMs89A1jQgcnbYZjXemlRTuy+RaT
NcXQxGSVvjW3QXT/qSiwD2GgeNVWbGTp5pCFME/GBY5tlad9blpJJIKkQQLHyhdW
U/UqokQr4hAbb1C1W+Y4nzQsGaHxB8AN+mQoD3luyDs0qqYNeHLiQCAm3mXdRna5
A/tkfOjwvZxT/OhJqWDcjIHB9NsWmA==
=YaAX
-----END PGP SIGNATURE-----

--qlTNgmc+xy1dBmNv--


--===============7070628094440887194==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme

--===============7070628094440887194==--

